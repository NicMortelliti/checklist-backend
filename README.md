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
The database is split up into 4 categories:
  1. checklist
  2. aircraft
  3. phases
  4. responses

The 'checklist' category contains all checklist items for all aircraft. Each checklist item **must** contain the following properties:
  1. id           <-- **Unique** id number
  2. isChecked    <-- Default state of the check button. "false" recommended
  3. tail         <-- Aircraft registration number
  4. phase        <-- Flight phase this checklist item pertains to
  5. description  <-- The checklist 'call', e.g. "Parking Brake"
  6. response     <-- The checklist response, e.g. "OFF"

The 'aircraft' category contains information regarding each aircraft the owner/operator chooses to support with this checklist. Each aircraft item **must** contain the following properties:
  1. id           <-- **Unique** id number
  2. tail         <-- Aircraft registration number
  3. manufacturer <-- Aircraft manufacturer, e.g. "Cessna", "Boeing", etc.
  4. model        <-- Aircraft model name, e.g. "Caravan", "F-16", etc.
  5. image        <-- URL to an image of the aircraft stored
  6. attribution  <-- **Optional** information regarding image author and applicable license

### Modifying the database


## License

[MIT](https://choosealicense.com/licenses/mit/)
