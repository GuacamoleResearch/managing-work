#!/bin/bash
# Bash script to set up GitHub lab environment dedicated to Issues and Projects.

# If "--delete" is passed as an argument, delete all issues in the repository
if [[ "$1" == "--delete" || "$1" == "--seed-all" ]]; then
  echo "Deleting all issues..."
  gh issue list --limit 1000 | awk '{print $1}' | xargs -I {} gh issue delete {} --yes
fi

# If "--seed" is passed as an argument, automatically create issues that are meant to be manually created
if [[ "$1" == "--seed-all" ]]; then
  gh issue create \
    --title "Investigate Issue Basics" \
    --body "
# Issue Basics

This task describes the lab steps required to complete the Issue Basics tasks.  As a template item, this description was filled out for you in advance (to save typing).  Generally, you will use templates to get started with a standard format and content but add additional information.  In this case, the issue is complete as-is...

To complete this task you will:
- [x] Use an issue template (done)
- [x] Review markdown used to format content in GitHub. You're looking at it now, but if you aren't already familiar with markdown you can refer to [this link](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github).  If you've already saved it and want to review the source markdown you can edit the description to see the unformatted text.
- [ ] Apply Labels
- [ ] Apply Milestones
- [ ] Query Issues
- [ ] Verify automation triggered by issues" \
    --assignee "@me" 
fi

# Seed automation issues required for all labs
if [[ "$1" == "" || "$1" == "--seed-all" ]]; then
  echo "Seeding automation issues for the lab..."
  gh issue create \
    --title "Add structure to issues" \
    --body "Add more structure to issues, including
- [ ] Issue Types
- [ ] Parent/Child relationships" \
    --assignee "@me" 

  gh issue create \
    --title "Batch to track learning GitHub Issues" \
    --body "The tasks under this issue are used to deliver a basic understanding of GitHub Issues." \
    --assignee "@me"
fi

