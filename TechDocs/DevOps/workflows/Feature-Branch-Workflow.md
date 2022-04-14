## Feature Branch Workflow

- new branch
  - review/cleanup branches(`gsb`) and stashes; review log
  - ***Update Branches***
  - create new working branch ~~ | or | switch to existing branch~~
  - push: `git push -u origin <wb>`<br/><br/>

- until working branch work complete {
  - until **push Main** {
    - until **merge to Main** {

      - while **push branch** {
        - ***Update Branches***
        - verify matching active branch
        - while **commit** {
          - while **cache** {
            - test / code / test
            - diff local changes
            - save all (ocS); stage as indicated
          - } **cache**
          - ~~Inspect~~
          - diff with original
        - } **commit**: verify target branch; commit changes

      - } **push branch**
<br/><br/>
    - ***Update Branches***
    - } **merge to `main`** *merge &lt;wb&gt; into main line of development*
      - checkout &lt;wb&gt;; review repo, branches, status (`gsb`)
      - *preview merge*: `difftool main`
      - `checkout main; merge --edit --no-ff <wb>`<br><br>
    - } **merge**
  - } **push Main**
- } **Branch**

#### Update Branches
- review git repo, branches, status (`gsb`)
- checkout main; fetch
- if changes:
  - update local main: `diff; commit`; use multiple commits if indicated
  - update &lt;wb&gt; from main: `checkout <wb>; difftool main; merge --edit --no-ff main; push`

<button onclick="window.print()">Print Button</button>
