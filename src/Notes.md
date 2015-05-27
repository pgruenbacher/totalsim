This document lists ideas for the structure of the new TotalSim Website. These ideas do not impact the choice of which platform to use but do impact the layout and content of the website. 

# Website
Layout ideas:
* Have a tab for “CFD Services” like on the U.K. website. Under the CFD Consultancy actually break down into further categories what we can support, but need to make sure we don’t seem to limit ourselves. Could show the examples of the apps, race cars, motorcycles, pipes, bikes, buildings, oil rigs, TKS car ove,  etc. Want to show that we can do a variety of work and can work with customers to solve their problems. 
* Have the twitter feed shown
* Have a section showing the employees for each company (About us section)
Contact page
* wiki or website page where we recomend some min hardware requirements, IT requirements (i.e. linux support) and base distros of Linux we know work

# Support
“Wiki”
Need to add a section recommended operating systems (wiki or website page where we recomend some min hardware requirements, IT requirements (i.e. linux support) and base distros of Linux we know work) 

# Internal Usage (Knowledge Base)
Have a page that lists how to setup CentOS 6 (or most recent version) as a desktop. Have it explain the package management system, what repos to enable (we use more then just CentOS) and take care of the NVIDIA driver (several ways to do this, but all mostly manual). 
Also add a manual so that an employee could upgrade their workstation to the most recent version

---

This sheet is broken down into 4 categories, Marketing, Support, Internal Usage, and Project Customers. Under each category is a list of requirements that would ideally need to be met on the future website and CMS platforms that will be shared between TotalSim U.S. and TotalSim U.K.

The same platform does not need to be used for all of these categories. Multiple platforms can be implemented for different needs and used together to make the final new website (example: could use wordpress or square space for the main website, use a CMS for the support and wiki, use Jira or bugzilla for bug tracking, etc). We do not want to limit ourselves to just one platform. 

# Marketing
* Want a modern, sleek looking website
* Need to improve layout based on the Google website tracking results
* Want a platform that is shared between the U.S. and U.K. office
* Could have separate news sections for each branch
* Be able to upload and share white papers
* Need to determine how many to share and what content is appropriate to share
Should have a gallery of videos and images
* Possibly break these up by categories. The customers interested in fan applications can be taken to a page that shows the fan app, fan videos and images
* Obviously needs to be able to accept large video and have a high quality video player
* Through the website the customer should be able to login into their account to access support or project customer information. Also TotalSim employees should be able to login to edit content, and access all sections (based on employee permissions)
* Have the twitter feed shown


# Support
Customer Specific Content:
* Tutorials 
* Training material
* A method for tracking and providing company specific features
* Have a general “wiki” for all customers; need decide whether to make public to any engineer that asks or just to support customers. 
* These pages need to be easy to edit. A user with no HTML or CSS knowledge should be able to add content with ease! 
* Have general training material available for download
* We had discussed before making training videos. Would be good to have those available on the “wiki” under their respective topic
* Need a way to keep track of development requests 
* Possibly use a “ticketing” system (See Ensight’s website as an example) for tracking support questions. The system would either send the support question to the point person for that company or just send general inquiries to all who are listed as support workers
* Need to track all the questions asked by customers and make a database of answered questions. The goal would be to send the customer a link to the answered question so that we are 1, doing less work (more efficient) and 2, being consistent with our answers to customers
* Would be nice to copy and paste FAQs onto a FAQ page and then send link to individual questions (not just to the FAQ page)
* The questions would be asked through the website and not just through email to individual TotalSim employees 
* Need to track bug errors (this can also go into internal usage and project customers). Would be very useful for the customer to be able to write up the bug the find and submit the bug under the correct category. Then we can assign a priority to the bug and work on it when possible. Maybe add a bug priority level set by the company and then an internal bug priority level?  This way we can see how large of an impact the bug is having on the customers
* Important: Don’t want all the bugs to come up if a customer does a search on the website or the CMS. This gets messy and confusing. They should be able to submit the bug and then get a notification that it was successfully submitted. 
* Could have a menu to select a category that the bug fits under. Is it an app problem, an installation problem, etc
* For both support and project companies: have a way for them to download the TotalSim installation, with instructions, for different platforms
* Should have an RSS feed showing the most updated content (company specific or general wiki pages)
* Long term (reference Drupal.com) We could have a dashboard for each user or company. The dashboard would show most recent page visits, any bug requests, or feature requests. Could also maybe show the support questions submitted through the website and their answers. The page could also list who is their “point” support contact
* I also like drupal’s search option. It is on a users’ dashboard and asks that they search for an issue before submitting a new bug or issue request. 



# Internal Usage (Knowledge Base)
* Want a CMS that contains all of the internal knowledge for both the U.S. and U.K.
* Would contain internal knowledge that would be disadvantageous to share with customers or is just useful for internal use. We want everything as documented as possible! The more we have documented the easier reproducing work and training will be. Example: IP address for work stations, how to format a new external hard drive, best geometry practices, how to set up mesh for specific geometries, how to make a pointwise mesh, internal training material, etc
* This will need to be discussed in great detail what the U.K. and U.S. are willing / unwilling to share with the “world”. Need to figure out what we want to keep to give us a competitive advantage and make customers rely on us for support.
* These pages need to be easy to edit. A user with no HTML or CSS knowledge should be able to add content with ease! 
* Have an internal development feature request system
* This would be an area that employees of the company can list ideas for improving software or procedures. They would get their name on the ideas and then we as a company can discuss which features are worth pursing. 
* Give the timesheets a subdomain for both the U.K. and U.S.
* Bug tracking could also go under internal usage. The customers need to be able to submit the bugs but we would have access to the bugs and can assign people to work on the bugs. Would need to decide how to split this across the U.K. and the U.S. 
* Need to be able to mark bugs as fixed for all employees to see
* Keep track of how the bugs were fixed for future references
* Have training videos for internal processes


# Project Customers
* Need a  system for distributing customer specific technical memos
* The customer should be able to log in, see a company specific page, select the project number, and then download the results
* Need a file sharing system 
* Would be nice to share geometry and results through the website. We can then track when geometry arrived, when we exported geometry and results, and be able to see what we sent. 
* Could put in a log everything that is shared per company, per project
* Have a system for customers to submit project requests 
* For both support and project companies: have a way for them to download the TotalSim installation, with instructions, for different platforms


