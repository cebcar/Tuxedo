Welcome to the DevOps wiki!

[Emoji Cheat Sheet](https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md#animal-marine)

Testing:
- API: probably [Postman](https://www.postman.com)
  - *Postman has a free version; Pricing page seems to suggest otherwise*
  - Medium Article [Top 10 API Testing Tools in 2020](https://medium.com/@alicealdaine/top-10-api-testing-tools-rest-soap-services-5395cb03cfa9)
  - Conclusion: Top 3 are: Katalon Studio, SoapUI, Postman
    - Katalon is Selenium-based; Soap uses Soap instead of REST
- Web: probably Katalon
  - access [Selenium driver](https://docs.katalon.com/katalon-studio/docs/using_selenium_webdriver_katalon_studio.html#introduction) as include files

Sketch Libraries:
- Best Practices [Best practices, plugins and tips to master Sketch Libraries](https://medium.com/hike-one-digital-product-design/best-practices-plugins-and-tips-to-master-sketch-libraries-8f325bd3ea7f)
- Free Library [Interaction Flow Kit for Sketch](https://medium.com/mobgen/interaction-flow-kit-75a8876a3a4)
- Reviews [10 must-know tools for creating user flows with great UX](https://www.justinmind.com/blog/10-must-know-tools-for-creating-user-flows-with-great-ux/)

Commandline:
- use Sketch to design command(cf user) interface

Chrome: enable developer tools:
- [How to Enable Google Chrome’s Secret Gold Icon](https://www.howtogeek.com/56194/how-to-enable-google-chromes-secret-gold-icon/)
  - *may or may not be still needed*

Security @ GitHub:
- [Security](https://github.com/features/security)

Testing: TeamCity, GitLab, or Jenkins?
  - Jenkins appears to be overkill, with ease-of-setup and -use penalties, for what we need.
  - If we are using YouTrack, TeamCity has an advantage due to interoperability,
    including with IntelliJ development apps.
    - We now are considering at least GitHub/ZenHub Projects instead of YouTrack.
      - That option has an interoperability advantage with the repository.
  - GitLab (competitor to GitHub) is another possibility.
    - It is basically a different repository storage system.
    - Cost is free for a while, then $4/mo.
  - Also consider code coverage and analysis.

Markdown:
- Use HTML entities style to insert special characters. For example writing '& #955;' (without the space) will produce '&#955;'

XX for GitHub Project: Since our recent hospital adventures, development has not been up-and-running as we need.

All current development threads are up and running.
- For any targets that do not yet build and test correctly, there is a plan to start moving there.

Gemini duplicate file finder id763940378837odr

# Notes
 
## Docs
- document this file under TextMate tool

## Developer/Assistive Support
 
### Shell
 - PS1: prompt with colors easier to find in terminal

## Markdown
- we like file header in style Amy (found in TextMate)

## Git

### reset: PERMANENTLY DISCARD LATEST COMMITS
- to undo since &lt;hash&gt;
  - new branch
  - establish HEAD~n for &lt;hash&gt;
	  - a precaution - use HEAD syntax instead of commit hash
  > git show HEAD~n
	
	- execute the change
  > git reset --soft HEAD~n
	
  - update workspace following `--soft reset`
	  - *`--soft` reset restores workspace to state just before commit*
		- verify and handle changes to workspace
  	- verify that we are where we want to be before `push`es

	- push to master
	> git push master
	
  - on master
   - sync with remote
   > git pull
   - FINALIZE: push to remote
   > git push

## GitHub

	

### Release
