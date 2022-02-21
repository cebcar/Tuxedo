## Feature Branch Workflow

- new branch
  - view / cleanup branches and stashes; view log(s)
  - ***Update Branches***
  - switch to existing branch~~ | or | create and push new branch~~<br/><br/>
    - ~~push: git push -u origin &lt;branch&gt;~~
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
    - ~~***Update Branches***~~
    - ~~(*Pull Request goes here*)~~
    - ~~***Update Branches***~~
    - } **merge to `main`** *merge &lt;branch&gt; into main line of development*
      - checkout branch; git repo, branches, status (`gsb`)
      - checkout main; preview merge: &lt;branch-to-merge&gt;: `git difftool $tb`
      - merge to main: `git merge --no-ff &lt;branch&gt;`
    - } **merge**
  - } **push Main**
<br/><br>
- } **branch**: close branch; remove if indicated

#### Update Branches (terminal)
*Update Main Branch* from origin/main
- view git repo, branches, status (`gsb`); verify ready to proceed
- checkout main; fetch; if changes: `difftool main`; `merge --no-ff main`; push; continue

*Update Working Branch*: if working branch active and main update was not empty:
- co &lt;working&gt;; `difftool &lt;working&gt;`; `merge --no-ff <branch>`; commit; push

```<button onclick="window.print()">Print Button</button>```
