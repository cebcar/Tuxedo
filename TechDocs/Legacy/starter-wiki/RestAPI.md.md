## Export Issues (Story)

We needed to add/change fields to fully set up Issues and Boards for our work.
Our intent was to change and integrate one field at a time.
    - But - the first field we changed (on a Sunday) took nearly an hour of processing time to complete.
    - So - we tried again, and that time it took four hours, never signalled completion
    - But - the changes appeared to have been made
    - Then - if one change took that long, maybe we should try making all the changes
    - And - that went quickly
    - But - the database was then corrupt, judging from user interface failures
    - But - it did appear that all issues were intact
    - So - we decided to rebuild the database and start again with conservative changes
    - But - since all issues were intact, we decided we needed to recover those issues
    - So - we need to use the REST API to export, and later import, those issues
    - But - our investigations so far suggest that that is easier than it sounds
    - But - there were so few issues that we decided to do copy/paste instead.
    - However, we do need REST API, so the rest of this process will be needed.
    Export/Import of issues would be a good way to learn and would be useful.

#### Steps:
    - see [Log in to YouTrack](https://www.jetbrains.com/help/youtrack/standalone/api-log-in-to-youtrack.html)
	- obtain permanent token for API Access 
		[Manage Permanent Token](https://www.jetbrains.com/help/youtrack/standalone/Manage-Permanent-Token.html)

02/11/20

Will we really need this? Transferring issues may not be big enough for motivation,
	and for right now we do not have other pressing issues that we will need the REST API for.

03/03/20


In Accessor, /if/when we get to supporting both mobile and app versions, REST will probably be needed. Would it be easier at some point to start to build/test for it as we go?