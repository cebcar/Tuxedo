## Feature Branch Workflow

- new branch
  - review/cleanup branches(`gsb`) and stashes; review log
  - ***Update Branches***
  - create new working branch ~~ or switch to existing branch~~
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

      - } **push branch**: `co <wb> diff; origin/<wb> <wb> ; push`
<br/><br/>
    - ***Update Branches***
    - ~~(*Pull Request goes here*)~~
    - ~~***Update Branches***~~
    - } **merge to `main`** *merge &lt;wb&gt; into main line of development*
      - checkout branch; review repo, branches, status (`gsb`)
      - preview merge: &lt;wb&gt;: `difftool &lt;wb&gt;`
      - checkout main; merge: `merge --edit --no-ff &lt;wb&gt;`
    - } **merge**
  - } **push Main**
- } **Branch**

#### Update Branches
- view git repo, branches, status (`gsb`); verify ready to proceed
- checkout main; fetch
- if changes:
  - `difftool`; `merge --edit --no-ff origin/main`; `push`
  - `difftool &lt;wb&gt;`; `merge --edit --no-ff main`; `push`

<button onclick="window.print()">Print Button</button>
