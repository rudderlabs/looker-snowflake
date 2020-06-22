## Table Structure

Views are created in Looker for each base table that is used for deriving the relevant data used for analysis and visualization.

There is a fixed set of tables that get automatically created in any warehouse destination configured in Rudder. 

Following are some of the tables from that set that have been used in this block:

* **Tracks**: Event Data
* **Pages**: Page View Data

Apart from the above tables, individual tables are also created for every event that is triggered from an application or site using Rudder.

One such table is being referred to in this block:

* **User_Signed_Up**: Contains data pertaining to every user sign-up event. If a different event is associated with user registration, then appropriate view should be created in Looker for that table. There are views that refer to `user_signed_up`. Such references should also be updated. Affected views are **webapp_signups_by_github_utm, webapp_signup_by_referrer, webapp_utm_campaign and webapp_utm_source**


