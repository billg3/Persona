Specifications for the Rails Assessment
Specs:

 x Using Ruby on Rails for the project
 x Include at least one has_many relationship (x has_many y; e.g. User has_many Personas)
 x Include at least one belongs_to relationship (x belongs_to y; e.g. Personas belongs_to User)
 xInclude at least two has_many through relationships (x has_many y through z; e.g. User has_many Collectives through Personas)
 xInclude at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. User has_many Collectives through Personas, Collectives has_many Users  through Personas)
 xThe "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. stars
 xInclude reasonable validations for simple model objects (list of model objects with validations e.g. presence )
 xInclude a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. Collective popularity)
 xInclude signup (how e.g. Sessions)
 xInclude login (how e.g. Sessions)
 xInclude logout (how e.g. Sessions)
 xInclude third party signup/login (how e.g. OmniAuth to Facebook )
 xInclude nested resource show or index (URL e.g. /collectives/:collective_id/personas)
 xInclude nested resource "new" form (URL e.g. /collectives/:collective_id/personas/new)
 xInclude form display of validation errors (form URL e.g. /user/new)

Confirm:

 xThe application is pretty DRY 
 xLimited logic in controllers
 xViews use helper methods if appropriate
 xViews use partials if appropriate



l'chaim!
