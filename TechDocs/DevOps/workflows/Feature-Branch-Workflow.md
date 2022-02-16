## Feature Branch Workflow

- new Task/branch
  - view and cleanup branches (rV 1), stashes(rV upx2, changelists(osT)
  - ~~***Update Branches***~~
  - ~~if new Task:~~ create new Task; push
  - ~~else: switch to existing Task; ***Update Branches***; push~~
    <br/><br/>

- until **Task/branch** work complete {
  - until **push Main** {
    - until **merge to Main** {
<br/><br/>
      - ***Update Branches***
      - while **push branch** {
      - verify matching active branch
        - while **commit** {
          - while **cache** {
            - test / code / test
            - diff local changes
            - add changed files as indicated (ocA)
          - } **cache**
          - Inspect
          - Compare with original (diff)
        - } **commit**: commit changes
        - ~~***Update Branches***~~
      - } **push branch**: checkout &lt;branch&gt;; Compare With &lt;remote&gt;; push &lt;branch&gt;
<br/><br/>
    - ~~***Update Branches***~~
    - ~~(*Pull Request goes here*)~~
    - ~~***Update Branches***~~
    - } **merge to `main`** *merge &lt;branch&gt; into main line of development*
      - checkout main; preview merge: &lt;branch-to-merge&gt;: Show Differences
      - merge to main: `git merge --no-ff &lt;branch&gt;`
    - } **merge**
  - } **push Main**
<br/><br>
- } **Task/branch**: close active Task; switch to default Task, removing just-closed changelist

#### Update Branches
*Update Main Branch* from origin/main
- view git repo and branch status (`gsb`); verify ready to proceed
- checkout main; fetch; if changes: `difftool main`; `merge --no-ff main`; push; continue

*Update Working Branch*: if working branch open and main update was not empty:
- co &lt;working&gt;; `difftool &lt;working&gt;`; `merge --no-ff <branch>`; commit; push
