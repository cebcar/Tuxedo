## Feature Branch Workflow

- new Task/branch
  - view and cleanup branches (rV 1), stashes(rV upx2, changelists(osT)
  - ~~***Update Main Branch***~~
  - ~~if new Task:~~ create new Task; push
  - ~~else: switch to existing Task; ***Update &lt;WorkingBranch&gt;***; push~~
    <br/><br/>

- until **Task/branch** work complete {
  - until **push Main** {
    - until **merge to Main** {
<br/><br/>
      - ***Update &lt;workingBranch&gt;***
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
        - ~~**Update &lt;workingBranch&gt;**~~
      - } **push branch**: checkout &lt;branch&gt;; Compare With &lt;remote&gt;; push &lt;branch&gt;
<br/><br/>
    - ~~***Update &lt;workingBranch&gt;***~~
    - ~~(*Pull Request goes here*)~~
    - ~~***Update &lt;workingBranch&gt;***~~
    - } **merge to `main`** *merge &lt;branch&gt; into main line of development*
      - checkout main; preview merge: &lt;branch-to-merge&gt;: Show Differences
      - merge to main: `git merge --no-ff &lt;branch&gt;`
    - } **merge**
  - } **push Main**
<br/><br>
- } **Task/branch**: close active Task; switch to default Task, removing just-closed changelist

#### Procedures (inactive)

*Update main branch* from origin/main
- checkout `main` branch; git fetch (rcF); if changelists clean: done
- else: origin/main: Diff with Working Tree to get changes(?); commit; push main

*Update &lt;workingBranch&gt;* from origin/main
- *Update Main Branch*; if changelists were clean: done
- else: checkout &lt;workingBranch&gt;; preview merge (main:cw); `git merge --no-ff main`; commit; push

<button onclick="window.print()">`Print Button`</button>
