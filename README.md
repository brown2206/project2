# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

SNITCH is a full CRUD rails app.  The models for this app were Tip and Suspect.  A tip can have many Suspects.  SNITCH has complete RESTFUL routes.  This app also uses ActiveRecord.  

SNITCH was inspired by 528cash, a crime tip line famously mentioned by 36 Mafia in Memphis Tennessee.  Expanding on that idea of 528cash, SNITCH is a rails app where users can privately login or sign up to submit tips and suspects.  Citizens can also browse the site in what's similar to a read only mode so that they can view the tips of others.  In browsing only mode, tipsters don't have the ability to provide, edit, or delete tips.  This was a result of implementing the devise GEM.  Essentially, browsers are stripped of CRUD ability unless they privately sign in.

In order to provide, edit or delete tips or suspects, users must sign in.  Upon logging in/signing in, a tipster is provided a link to give a tip.  A tip contains the type of offense, location, and image of the suspected criminal activity.  

After providing a tip, the tipster now has the ability to add suspects, edit or delete suspects.

Only the provider of the Tip/Suspect can delete that Tip/Suspect.  If a user happens to spot a tip that is displeasing to him/her, the tip can't be deleted unless he/she is the person that created it.

The comic book background and Font of SNITCH was inspired by the fact that I wanted to make each and every user of SNITCH feel like a superhero that was tasked to protect and defend their communities through reporting Tips and Suspects.

In the future, I would like to allow users the ability to click links.
