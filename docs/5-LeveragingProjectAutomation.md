## Projects and Automation
_As noted in the last exercise, the act of closing an issue and changing the a project status are different things, but automation enables us to couple them. In this exercise we'll work with the built-in automations and explore the other ways that Issues and Projects can be automated._

### Explore built-in workflows
- [ ] Access the "Workflows" project settings and review currently active automations.
  - While viewing the project, click on the elipses (**...**) button in the top right of the screen (image) to access the project options.
  - Click on **Workflows**.
- [ ] Review the active default workflows.
  - Review the list of "Default workflows" on the left side of the page.  Notice that the green dot identifies active workflows.
  - Click on the "Item closed" workflow and review the actual workflow; it provides a simple event flow, where when the event in the top box occurs, we will automatically cause the activity in the lower box to occur.  In this case, if an issue in the project is closed, it will be moved to a "Done" status.
  - Click on "Auto-close issue" and review the workflow.  This is the automation that we used in the last exerise - when a status is changed to "Done" then the underlying issue is closed.
- [ ] Add a workflow to automatically add new issues or PRs to this project.
  - Click on the "Auto-add to project" default workflow.
  - Click the Edit button on the top-right of the page.
  - Ensure that your repo is selected in the Filters section of the top box.
  - Change the filter to remove the label, so that the new filter text is `is:issue,pr is:open`; in this workshop we've been using purely issuse, but in the next exercise we'll look at PRs.
- [ ] Save the workflow and add a new "Verify project automation" issue to verify the automation.
  - Click the **Save and turn on workflow** green button on the trop-right of the page.
  - Access the menu button (image) in the far top-left ot the page.
  - Scan down the menu popup on the left side of the screen and locate the "Repositories" section.
  - Click on the name of the repository that you're using for this lab; if you don't see it you can search for it.
  - Click on **Issues** in the top navigation for the page and then on the green **New issu** button.
  - Create and save an issue using the "Blank issue" template titles `Verify project automation`.
  - In the right column of the newly created issue, verify that your project is visible in the "Projects" section.
NOTE: If you review your project, the new issue will NOT be visible. The existing project views filter on Issue Types, and the issue you just created is untyped.  We'll consider solutions for this in the Bonus exercises.

### Review advanced automation options
- [ ] Review API and command line automation options.
  - The [GitHub CLI](https://cli.github.com/) provides commands to directly [read and manuipulate Issues](https://cli.github.com/manual/gh_issue) and [Projects](https://cli.github.com/manual/gh_project).
  - GitHub provides powerful REST APIs to programmatically interact with [Issues](https://docs.github.com/en/rest/issues); you can call these from the programming language of your choice, a variety of tools, and/or the GitHub CLI.
  - In addition, GitHub provides GraphQL APIs for both [Issues](https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-api-to-manage-projects) and [Projects](https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-api-to-manage-projects).
  - The GitHub command line can be easily integrated into scripts to provide more complex interactions. In this workshop, we leveraged this automation to prepopulate 
- [ ] Review scripted Issues automation for this lab.
  This lab used automation to prepopulate issues using the GitHub CLI in a batch script.  Review the script to learn how the CLI was used to create and manipulate issues, both directly and via the REST APIs.
  - Return to your repo in the browser; if you are already viewing the issue from the last exercise, you are there.  If not, you can use the browser back button or the GitHub menu in the top-left of the page.
  - Click on the **<> Code** button in the top-navigation of the page.
  - Click on the **.github** folder and then into the **scripts** folder.
  - Click on the **prepare-lab-end.sh** file to review the contents.
- [ ] Review and verify the "issue-ping" GitHub Actions workflow
  - On the left-nav for the page, drill into the ".github/workflows/" folder.
  - Click on the "issue-ping.yml" file; GitHub Actions supports a wide variety of triggers for [Issues](https://docs.github.com/en/actions/writing-workflows/choosing-when-your-workflow-runs/events-that-trigger-workflows#issues).  Note that this workflow triggers when an issue comment is created:
    ```
    on:
    issue_comment:
        types: [created]
    ```
  - From the top-navigation of the page, click on **Issues** to open the issue list.
  - Drill into an issue (it doesn't matter which one) and add the comment `ping` to the text area near the bottom of the form.
  - Click on the green **Comment** button at the bottom of the page.  This will trigger the actions workflow we reviewed earlier.  It may take a few moments to complete but the workflow will add a reponse comment "pong" to the issue in response to your comment.
  - If you wish, you can wait for it to complete, and/or you can click on **Actions** in the top-nav and watch the workflow logs for this automation.

