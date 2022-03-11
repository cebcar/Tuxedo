## Feature Branch Workflow

- new branch
  - view / cleanup branches and stashes; view log(s)
  - ***Update Branches***
  - create new branch | or | switch to existing branch
  - push: git push -u origin &lt;branch&gt;<br/><br/>
<br><br>
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
            - add changed files as indicated
          - } **cache**
          - ~~Inspect~~
          - diff with original
        - } **commit**: commit changes

      - } **push branch**: checkout &lt;branch&gt;; Compare With &lt;remote&gt;; push &lt;branch&gt;
<br/><br/>
    - ***Update Branches***
    - ~~(*Pull Request goes here*)~~
    - ~~***Update Branches***~~
    - } **merge to `main`** *merge &lt;branch&gt; into main line of development*
      - checkout branch; review repo, branches, status (`gsb`)
      - checkout main; preview merge: &lt;branch-to-merge&gt;: `git difftool $tb`
      - merge to main: `git merge --edit --no-ff &lt;branch&gt;`
    - } **merge**
  - } **push Main**
<br/><br>
- } **branch**: close branch; remove if indicated

#### Update Branches from origin/main
Update Main Branch
- view git repo, branches, status (`gsb`); verify ready to proceed
- checkout main; fetch
- if no changes: done with Update Branches
- else: `difftool main`; `merge --edit --no-ff main`; push; continue

Update Working Branch: if working branch active and main update was not empty:
- co &lt;working&gt;; `difftool &lt;working&gt;`; `merge --edit --no-ff <branch>`; commit; push

```<button onclick="window.print()">Print Button</button>```
