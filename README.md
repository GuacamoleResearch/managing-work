# Issued & Projects lab - Build 2025

## Assumptions
- Proposed: We work in an exising GHE org that we can easily add users to and they can create/fork/... a repo and create projects
  - We have seeded some appropriate cross-project issues, projects, ...
  - We can easily seed Labels, Issues, etc., in their "forked" repo through some automation
  - Copied/forked repo will include appropriate templates, automation, and other code artifacts
- Alternative:   We have to work in public user-owned accounts
  - Can fork from a source OSS repo
  - Source will have appropriate automation to seed issues, projects, Labels, etc. which must be manually executed
  - Apparently Issue Types aren't available in non-GHE?
  - We will either need to add steps (bonus) for cross-project collaboration or exclude it
  - Copied/forked repo will include appropriate templates, automation, and other code artifacts

## Lab
1. Setup
   - Ensure VM and GitHub account access
   - Copy/Fork source repo
   - Run appropriate automation to setup whatever is needed
2. Working with Issues
   - Create your first issue in your repo
     - Purpose: Shows cross-project collaboration, issue templates, parent-child relationships
     - Issue Type=Batch, title=TBD, template=tbd, ... fill out template
     - (Assuming GHE org) - Add parent Epic in a separate repo for "The 3xx Lab attendees will learn about GitHub Issues and Projects"
       - Do we have a solution for non-GHE/Public OSS?
   - (*Defer until automation is in place*) Maybe create a separate Batch issue for "Post-build follow-up" under the same Epic
   - Add child issues
     - Purpose: Build out a hierarchy of both new and existing child items (tasks)
     - Create a new child issue - related to the next step in your Batch issue
       - Type=Task (may want to make this a post-creation step to show muteability), some template, based on the next step in the lab
   - ?? Possibly something with Labels and Milestones? This is an important aspect of issues but don't want to dwell too long.
3. Project Fundamentals
    - Create a new project
      - Purpose=TBD, template=TBD
    - Add existing Task issues (only tasks at this point - will show more with views)
    - tbd - States and Fields??
4. Working with Project Views
   - TBD
5. Intro to Project Automation
   - Add automation for "new item in your repo" and exercise it with a new item
   - Add automation for "Closed means complete"
   - Add a new issue and verify the automation
   - Close the issue and verify the automation
   - ?? (Bonus) Possible advanced automation with existing
6. Issue, PRs and Links
   - Back to basics...  Modify an automation script, create a PR, have it close a prepopulated issue
   - Maybe add the PR to the board and verify
   - Merge the PR and see everything close out
7. Insights on your Projects
   - TBD
x. Possible: At the end, go to the shared board and change a custom field on that board that doesn't exist in the lab boards - need to verify permissions, etc.
x. Anything else?

---
Issue Hierarchy (* == manually added)
- Build 2025 Lab 302 EPIC [in a separate project as a parent for all participating batches]
  - [2.2-Batch*] @user uses GitHub Issues
    - [2.1-Task*] Investigate issue basics <-- can setup a template JUST for this item
      - Checklist: Using Issue Templates, Markdown, Labels, Milestones, Querying Issues, Verify lab automation
      - Run automation for creating issues???  or trigger based on creation of this issue?
    - [2.2-Task] Add structure to Issues
      - Checklist: Types, Hierarchy

- [Batch] Post-build follow-up resources
   - [No type] GitHub Issues reference material
   - [No Type] GitHub Projects reference material
   - [No Type] GitHub Issues & Projects automation (CLI, API)
   