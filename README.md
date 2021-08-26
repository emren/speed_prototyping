## 1. Description
Speed prototyping is a design implementation challange within fixed time frame. A design templatate is given and visualy close result in code is expected.
## 2. Chosen Technology
Flutter Channel stable, 2.2.3, implemented null safe  **sdk: ">=2.12.0 <3.0.0"**

## 3. Project Structure
As a best practice, UI and logic has been separated. This is achieved by collecting ui files under ui folder and logic under core folder.

## 4. State Management
For the state management **Provider** with **ChangeNotifier** has been implemented in this project. Changenotifier is Flutters own state solution, a wrapper for inherited widget, where it has notifylistener() function to update the widgets.

## 5. Packages Used
**provider** For state management

**font_awesome_flutter** For icons

**google_fonts** For fonts