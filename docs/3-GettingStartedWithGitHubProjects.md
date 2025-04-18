## Managing work with GitHub Projects
_GitHub Projects project a management layer on top of Issues, providing custom fields, custom workflows, visualizations, automation, and ...TBD... In this exercise we'll investigate creating projects, adding issues, adding drafts, adding fields, and customizing workflow status.

### Exercise Project Fundamentals
- [ ] Create a new project with a name that you'll recognize (e.g., "Dave's lab project"), starting from scratch with a Table.
  - Click on **Projects** in the GitHub top nav.
  - Click on the **+ New project** green button on the right side above the (likely empty) project list.
  - Review the "Featured" templates in the "Create project" dialog, but don't select one. Instead, select **Table** on the left side under "Start from scratch".
  - Give the title a "Project name" that you'll recognize (e.g., "Dave's workshop project").
  - Click the green **Create project** button on the lower-right of the form. 
- [ ] Add a new Task Issue to the project in your repo, using the "Blank Issue" template and with the title "Add an issue from the project board"
  - Next to the "+" at the bottom of the table, type the title "Add an issue from the project board"
  - Press Return/Enter to accept the title
  - Verify that your repo is selected and select "Blank Issue" as the template
  - At the bottom of the form, select "Task" as the type
  - Click the Create button to save the new issue.
- [ ] Add all of the remaining issues in your repo to the project
  - Next to the "+" at the bottom of the table, type the hash symbol (#) to open the repo selector.
  - Click on your repo name.
  - At the bottom of the popup list, select "Add items from *your-org/your repo*".
  - In the top of the form, select **Select all items**
  - Click the green **Add selected items** button in the lower-right of the form.
  - Click outside the "Add items to project" form to close it.
- [ ] Add a draft item named "Investigate draft issues" to the project; drafts do not have a backing issue and have fewer capabilities but are easier to work with and not tied to an individual repo.
  - Click in the textbox next to the "+" at the bottom of the table.  If your repo is listed, you'll need to delete it before proceeding.
  - Type the title "Investigate draft issues"
  - Note that the popup menu has the option to **Create a draft issue**. You can click that button or press Control (or Command) + Return/Enter to create the draft.
  - Note the popup menu including **Create a draft**.  Select that item on that menu item or press Control (or Command for mac) and Return/Enter.
    The draft has been added.  It can be modified or removed, like any other item in the project, or converted into an issue.

<!-- Possibly add something for manipulating projects from within the issues -->

### Customize Status and Fields
- [ ] Add a new **Single select** project field for "Priority"
  - Locate and click on the **+** in the header row of the far right column of the table, and select **+ New field**.
  - Enter "Priority" as the "Field name" and select "Single select" as the "Field type".
  - In the "Add option.." textbox, enter `:fire: High` and click the **Add** button.
  - Repeat adding options for `:yellow_circle: Medium` and `:ice_cube: Not going to happen`.
  - Click the green **Save** button to add the field.
- [ ] Repeat the process above to add Date fields for "Start" and "End".
  - As stated, the process is identify except that the names are different and the **Date* type doesn't require additional "Add option..." steps.
- [ ] Add a new Status for "Paused"
  - In the table header, click on the elipses **...** next to the "Status" header.
  - Click on the **Field settings** option.
  - In the **Add option...** textbox type `Paused` and click the **Add** button.
  - If you'd like to change the item's color or add a description, you can do that by clicking the elipses **...** to the right of the item.
  - In the top left of the screen, locate and click the **<-- Settings** button to return to the project view.
