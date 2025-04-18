## Working with Project Views
_One of the valuable components in Projects is the ability to customize how you view and interact with a group of related work. In this exercise we will filter, slice, and create a variety of different project views._

### Filter Project Data
If you're not already, get the the project board and the default view.
- [ ] Rename the first view as "Feature Planning"
  - Locate the tab with the default name "View 1"
  - Double-click on the **View 1** text; delete the existing name and replace it with the title "Feature Planning"
- [ ] Add a filter to only show "Feature" and "Bug" type issues that aren't "Done"
  - In the filter textbox with the magnifying glass icon (image), enter the text `Type:Bug,Feature -status:Done`.  Note that dash is used to indicate the Boolean logical "not". 
  - Click the green **Save** button to the right of the filter textbox to save your changes. 

### Add a Release Roadmap view
- [ ] Populate Feature issues with priorities and dates; using the existing "Feature Planning" view, set the Priority, Start and End dates in the grid as:
  "Learning GitHub Issues...", High Priority, May 12-May 16, 2025
  "Exercise Project Fudamentals", Medium Priority, May 15-May 21, 2025
  "README has a typo", Medium Priority, May 21-May 23, 2025
- [ ] Duplicate the current view with the name "Release Roadmap", the type "Roadmap", scaled to "Quarter" and sorted by "End"
  - In the tab for the "Feature Planning" view, click the down arrow button
  - Click on **Duplicate view**
  - Double-click on the new view tab title (e.g., "View 2") and rename it to "Release Roadmap"
  - Click the down arrow button in the new "Release Roadmap" view and select the Roadmap button (image) at the top-right of the popup
  - Change the **Month** scaling button (image) to Quarter so that you can see a longer timeline
  - Change the **Sort** button (image) to use the End date
  - Click the green **Save**
- [ ] Adjust release dates
  - Drag the "Exercise Project Fundamentals" issue so that it starts immediately after the "Learn GitHub Issues Batch" is complete.
  - Drag the right side (end) of the "README has a typo" issue so that it is only one day
  - Hit the **+** button next to "Add a Release Roadmap View" issue; drag and stretch the issue so that it is a few days duration, starting after the "README has a typo" issue

### Add a Board view for tasks
- [ ] Add a new view named "Task Board" with the type "Board", filtered on task issues
  - Click the **+ New view** button next to the "Release Roadmap" tab and rename the new tab to "Tasks"
  - In the "Filter by keyword or by field" textbox enter `Type:Task`
- [ ] Add a "Parent issue" slicer, group by "Assignee", and add "Labels" to the fields
  - Click the down arrow button on the "Tasks" tab, click on **Slice by:** button, and select **Parent issue"
  - Repeat the process to add a **Group by:** with the value **Assignee**
  - Repeat the process, selecting **Fields:** and adding the **Label** field
  - Click the green **Save** button to save changes
- Verify board interactions
  - Drag one of the issues from the "No Assignees" group into your aassignee ; verify that it is now assigned to you, as evidenced but the icon on the top-right of that card
  - Click on the "Learning GitHub Issues" parent isse; verify that it filters down to only show the two child issues assigned to that parent
  - Click on that parent issue again, or click on **deselect** in the slicer, and verify that all cards are shown again
  - Drag the "Investigate Issue Basics" issue to the "Done" column
    - Verify that the **Learning GitHub Issues Batch** in the Parent issue has been updated to show "2 / 3" or 66% complete.
    - Verify that the icon in the "Done" card has changed from an open issue (image) to closed (image)
  NOTE: The fact that the issue was closed when it was dragged to "Done" was not through magic; it was though automation which we'll investigate next!




  