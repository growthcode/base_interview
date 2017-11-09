How would you build out this feature.
I'm ganna give you a scenario and I want to see how you would design each step as new qualifiers come in.

- You take over a feature of the app that parses a CSV and saves the data to the various models we have.
  - Right now it's service
  - It takes in the CSV data parsed out into an array of arrays.
  - It's only employee information
    - Things like first name, last name, SSN
  - Methods
    1. First method that runs is a parse the CSV
    2. Goes through each row and assigns the hash (using headers as keys) to attributes
      - and saves the models.
  - It works fine when the data is correct, and in string format but now we have to add in new data types
    - Date of birth
    - hire date etc

  1.1 How would you go about applying data validations in this service per cell type?
    - How would you render what is wrong with CSV to the end user.
  1.2 Now we have to get all the errors in the CSV and show them all at one time versus stopping after the first.
    - Now we have to show which row has the error.
  2. Now we have to allow this csv to create employee if they don't exist or update them if they do exist
  3. Now we have to add validations
    - like if adding a date_of_leaving to the an employee, we also need to have a employment termination reason
  4. Now we have to add dependents into the mix
  5. Now we have to validate context of families, like new two children have the same DOB or SSN in a family
  6. Now we have to add in plan data create plan if it doesn't exist, or update to different plan if they are switching and it does exits
  7. Now the features is taking too long to run before the browser times out
  8. Now we have to run a set of validations, on the plans before we allow them to continue...
    A. JSON attr temp stor

    - if the plan has a product start date, then the enrollment of the employee's  Start date can't be before the product plan starts
    - 90% of these validations are the same
    - half of them have 1 or 2 custom validations









Extra Q's
- We have this complex logic of saving an employee's information and a lot of models need to get updated
  - models:
    - User instance
    - Employee instance (because of MEI)
    - PersonalInfo Instance
    - Compensation instance
    - PayGroup instance
  - We have to do this same complex saving of information in 5 different parts of the app because of api connections and various ways they could be added
  - Currently they all do the saving separately separately
  - When new features get added
    - Bugs creep in because 1 or more of the areas don't have the new logic of saving that needs to take place.
  - How would you dry up this situation
- How would describe what belongs in a
  - Model
  - View
  - Controller
- What's the benefits of a module
  - when do you use them personally?


