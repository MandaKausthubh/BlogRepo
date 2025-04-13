#!/bin/bash
rsync -av \
  --include="*.md" \
  --include="*/" \
  --include="*.png" \
  --include="*.jpg" \
  --include="*.pdf" \
  --exclude="*" \
  ~/Documents/ResearchVault/posts/ ~/Ghost/Blog/MandaKausthubhBlog/content/posts/
cd /Users/mandakausthubh/Ghost/Blog/MandaKausthubhBlog
cd public
git add .
git commit -m "Update notes $(date)"
git push
