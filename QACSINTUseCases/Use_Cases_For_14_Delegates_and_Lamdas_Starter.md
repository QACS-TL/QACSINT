# Agile User Stories for Zoo Tycoon Animal Management System

## 14 Delegates and Lambdas – Starter

### Refactoring the Edit and Add functionality to reduce Duplication Version

------------------------------------------------------------------------

## User Story 106: Unified Attribute Validation

**As a** developer  
**I want** a single reusable method for validating attributes during add
and edit operations  
**So that** I can reduce code duplication and improve maintainability

### Acceptance Criteria:

- Implement GetAndValidateAttribute() method with parameters:

  - attributeName (string)

  - attributeChecker (Func\<string, bool\>)

  - currentValue (optional)

- Supports both adding new animals and editing existing ones

- Displays prompts with current value when editing

- Loops until valid input is provided

**Priority:** High  
**Story Points:** 8

------------------------------------------------------------------------

## User Story 107: Dynamic Validation Using Lambda Expressions

**As a** developer  
**I want** to define validation rules inline using lambda expressions  
**So that** I can make the code more flexible and readable

### Acceptance Criteria:

- Validation for attributes like Name, Type, Colour, LimbCount,
  WhiskerCount, TailLength, Wingspan implemented via lambda

- Example: n =\> n.Length \< 2 for Name

- No hardcoded switch-case logic for validation

**Priority:** High  
**Story Points:** 5

------------------------------------------------------------------------

## User Story 108: Enhanced Edit Functionality

**As a** user  
**I want** to edit animal attributes using the same validation logic as
adding  
**So that** data integrity is maintained consistently

### Acceptance Criteria:

- Edit menu uses GetAndValidateAttribute() for all fields

- Blank input retains current value

- Supports editing species-specific attributes (WhiskerCount,
  TailLength, Wingspan)

**Priority:** Medium  
**Story Points:** 5

------------------------------------------------------------------------

## User Story 109: Filter Animals by Attributes

**As a** zoo administrator  
**I want** to filter animals by name, colour, or limb count  
**So that** I can quickly find specific animals in the collection

### Acceptance Criteria:

- Filter menu includes options: Name, Colour, Limb Count

- User enters filter value via console input

- Display only animals matching the filter criteria

- Case-insensitive matching for Name and Colour

**Priority:** High  
**Story Points:** 5

------------------------------------------------------------------------

## User Story 110: Analytics for Most Popular Colour

**As a** zoo administrator  
**I want** to see which animal colour is most common  
**So that** I can make informed decisions about animal diversity

### Acceptance Criteria:

- Option in Filter menu for “Most Popular Colour”

- System calculates frequency of each colour using LINQ GroupBy

- Displays either one colour or multiple colours if tied

- Shows count of animals for each top colour

**Priority:** Medium  
**Story Points:** 8

------------------------------------------------------------------------

## User Story 111: Extended Main Menu

**As a** user  
**I want** the main menu to include filtering options  
**So that** I can access new functionality easily

### Acceptance Criteria:

- Main menu now includes “Filter animals” as option 7

- Exit option moved to 8

- Menu dynamically reflects new features

**Priority:** Low  
**Story Points:** 2

------------------------------------------------------------------------

## Technical Notes

### Major Architectural Changes

- **Validation Refactor**: Replaced hardcoded AttributeChecker with
  GetAndValidateAttribute() and lambda-based rules.

- **UI Enhancements**: Added filtering and analytics options to main
  menu.

- **LINQ Integration**: Introduced LINQ for filtering and analytics
  (GroupBy, Where).

### New OOP Principles Demonstrated

- **Single Responsibility Principle (SRP)**: Validation logic
  centralized in one method.

- **Open/Closed Principle**: Validation rules easily extendable via
  lambda expressions.

- **Polymorphism**: Continued use of overridden Eat() methods in
  subclasses.

------------------------------------------------------------------------

### Changes to Testing Strategy

- Existing tests for validation and sorting remain unchanged.

- **Gap Identified**: No tests for new filtering and analytics features.

- Future recommendation: Add unit tests for FilterAnimals() and
  GetMostPopularColours().

------------------------------------------------------------------------

### Code Quality Improvements

- **Reduced Duplication**: Unified validation logic for add/edit
  operations.

- **Improved Readability**: Lambda expressions for validation rules.

- **LINQ Usage**: Simplified filtering and analytics logic.

------------------------------------------------------------------------

### Migration Impacts

- **Backward Compatibility**: Existing functionality preserved; new
  features additive.

- **Database Schema**: No changes required; filtering operates on
  existing Animal entities.

- **Minimal Refactoring**: Enhancements localized to Program.cs.
