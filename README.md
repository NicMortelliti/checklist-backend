# Flying Checklist - Backend

**Note: This app is only meant to be a demonstration of React development. It is NOT intended to be used for flight.**

This is the backend for a React application that digitizes the paper checklist commonly used by pilots. An aircraft owner/operator populates the backend database with information regarding the aircraft in their fleet (e.g. tail number, make, model and a link to an image of the aircraft), as well as checklist items categorized by phase of flight. The user has the capability to add new checklist items as well using the New Item Form.

## Installation

**Note: This is the back-end of the application only. You may install the frontend, [found here](https://github.com/NicMortelliti/checklist-frontend).**

1. Clone this repo to a local directory.

2. Use the package manager [npm](https://www.npmjs.com/) to install the dependencies.

```bash
$ npm install --legacy-peer-deps
```

3. Finally, start the server. TIP: The frontend relies on this backend running on port 3000. So if running alonside the frontend, start this backend first so that it can claim port 3000.

```bash
$ npm start
```

## Usage
### Categories
The database is split up into 4 categories:
  1. [checklist](checklist)
  2. [aircraft](aircraft)
  3. [phases](phases)
  4. [responses](responses)

#### checklist
The 'checklist' category contains all checklist items for all aircraft. Each checklist item **must** contain the following properties:
  1. id           <-- **Unique** id number
  2. isChecked    <-- Default state of the check button. "false" recommended
  3. tail         <-- Aircraft registration number
  4. phase        <-- Flight phase this checklist item pertains to
  5. description  <-- The checklist 'call', e.g. "Parking Brake"
  6. response     <-- The checklist response, e.g. "OFF"

#### aircraft
The 'aircraft' category contains information regarding each aircraft the owner/operator chooses to support with this checklist. Each aircraft item **must** contain the following properties:
  1. id           <-- **Unique** id number
  2. tail         <-- Aircraft registration number
  3. manufacturer <-- Aircraft manufacturer, e.g. "Cessna", "Boeing", etc.
  4. model        <-- Aircraft model name, e.g. "Caravan", "F-16", etc.
  5. image        <-- URL to an image of the aircraft stored
  6. attribution  <-- **Optional** information regarding image author and applicable license

#### phases
The 'phases' category contains the flight phases that will contain checklist items. These phases are listed on the flight phases selection page of the application.
  1. id     <-- **Unique** id number
  2. phase  <-- Name of the flight phase

#### responses
The 'responses' category contains a collection of supported checklist item responses. These populate the 'Response' dropdown menu in the New Item Checklist form.
  1. id       <-- **Unique** id number
  2. response <-- Checklist item response, typically written in call caps.

### Modifying the database
To modify the database, edit the 'seeds.json' file found in the 'db' directory. Be sure to familiarize yourself with the database [categories](categories) before making changes. When your updates are complete, run `npm run seed`. This will populate the actual database 'db.json' file with all of the data from 'seeds.json'

## License

[MIT](https://choosealicense.com/licenses/mit/)
