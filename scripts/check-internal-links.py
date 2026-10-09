#!/usr/bin/env python3
"""Fail if any relative Markdown link in the repo points to a file that does not exist.

Also enforces that nothing under skill/ links outside skill/ (the skill must stay
self-contained once installed via symlink or copy).
Usage: python3 scripts/check-internal-links.py
"""
import pathlib
import re
import subprocess
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent
LINK = re.compile(r"\[[^\]]*\]\(([^)\s]+)\)")
files = subprocess.run(["git", "ls-files", "*.md"], cwd=ROOT, capture_output=True,
                       text=True, check=True).stdout.split()
# include untracked new files too
files += subprocess.run(["git", "ls-files", "--others", "--exclude-standard", "*.md"],
                        cwd=ROOT, capture_output=True, text=True, check=True).stdout.split()
errors = []
for rel in sorted(set(files)):
    if rel.startswith("corpus/"):
        continue  # verbatim source documents
    path = ROOT / rel
    for target in LINK.findall(path.read_text(encoding="utf-8")):
        if re.match(r"^[a-z]+:", target) or target.startswith("#"):
            continue
        target = target.split("#", 1)[0]
        dest = (path.parent / target).resolve()
        if not dest.exists():
            errors.append(f"{rel}: broken link -> {target}")
        elif rel.startswith("skill/") and not str(dest).startswith(str(ROOT / "skill")):
            errors.append(f"{rel}: skill file links outside skill/ -> {target}")
for e in errors:
    print(e)
print(f"checked {len(set(files))} files, {len(errors)} problem(s)")
sys.exit(1 if errors else 0)
