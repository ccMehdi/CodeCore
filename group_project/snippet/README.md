# Group Project Snippet

## Requirements

We will use the CRUD Method for this project.

### Sections

We will have three sections for this Project:
<ul>
<li>Submit the code</li>
<li>Category section</li>
<li>Snippet listing by Category</li>
</ul>


#### Submit the code
We will require a form with the following fields:
<ul>
<li>Category Selection (Kind)</li>
<li>Title</li>
<li>Code Snippet (Work)</li>
</ul>

The Category field will be populated from the database. For the code Snippet, we will use a GEM ``. This GEM will make the code snippet show in markdown format. All the field will have validation and will be required. Only the title will be unique.


#### Category Management
The category management will allow us to add/remove/edit the categories for our system. We will have validation on the name and it will have to be unique.

#### Snippet listing
This will list all the snippet of code in the system organized by category with a display of the amount of posting in that category.

When you click on a specific category, you will see a listing of all the posting related to that category. From there you can click on a title and view the posting.
