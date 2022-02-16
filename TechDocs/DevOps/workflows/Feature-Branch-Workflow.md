## Feature Branch Workflow

- new branch
  - view / cleanup branches and stashes
  - ***Update Branches***
  - create and push new branch | or | switch to existing branch<br/><br/>

- until branch work complete {
  - until **push Main** {
    - until **merge to Main** {

      - while **push branch** {
        - ***Update Branches***
        - verify matching active branch
        - while **commit** {
          - while **cache** {
            - test / code / test
            - diff local changes
            - save all (ocS)
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

#### Update Branches (terminal)
*Update Main Branch* from origin/main
- view git repo and branch status (`gsb`); verify ready to proceed
- checkout main; fetch; if changes: `difftool main`; `merge --no-ff main`; push; continue

*Update Working Branch*: if working branch open and main update was not empty:
- co &lt;working&gt;; `difftool &lt;working&gt;`; `merge --no-ff <branch>`; commit; push
