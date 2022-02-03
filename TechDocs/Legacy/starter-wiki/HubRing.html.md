<!DOCTYPE html>
<html lang="en">
<head>
	<title>HubRing</title>
	<meta name="generator" content="BBEdit 9.6" />
</head>
<body>
<!-- @marker "HubRing" -->
<h2 id="HubRing_">HubRing</h2>

<h3 id='HR_install-config'>Install and Configure HubRing</h3><ul>
	<li>download from <a href="https://www.jetbrains.com/hub/download/#section=mac">Hub Download</a><ul>
		<li>note 2017.04.07: reported JPS-5617<ul>
			<li>build 5178: attempt to set up OAuth with GitHub fails; 'copy' button for callback fails, associated GitHub link fails #404</li>
			<li>using build 4996</li>
		</ul></li>
		<li>Download the *.zip package from Jetbrains</li>
		<li>Place downloaded package in /Volumes/Servers/jb/Hub; expand at that location</li>
		<li><span class="mono">cd &lt;path/to/hub&gt;; bin/hub.sh start</span></li>
		<li>In installation wizard, select installation type 'Setup'<ul>
			<li>Select Hub Service<ul>
				<li>set JetBrains password for admin account</li>
			</ul></li>
			<li>Confirm License<ul>
				<li>save license key; confirm License restrictions; 'Finish'</li>
			</ul></li>
			<li>Hub opens; Login as admin; admin/setup menu is on hexagonal "nut" icon</li>
		</ul></li>
		<li>Configure Initial Properties; see also <a href="https://www.jetbrains.com/help/hub/2017.2/Configuration-Parameters.html">Configure System Properties</a><ul>
			<li><strong>System Settings</strong>: session timeout 12 hours; remember me for 1 year</li>
			<li><strong>SMTP</strong>:<ul>
				<li>host smtp.cox.net; from carolclark@cox.net</li>
				<li>user carolclark; password: cox</li>
				<li>Security and Authorization: username 'carolclark'; password cox</li>
				<li>enable notification; send test message</li>
			</ul></li>
			<li><strong>Backups</strong><ul>
				<li>to '/Volumes/Mavericks-1/JetBrains_backups; zip format; every day at 2 AM; rotation 5</li>
			</ul></li>
		</ul></li>
		<li>JVM Options: no changes</li>
	</ul>

</body>
</html>
