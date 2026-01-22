# Agile User Stories for Zoo Tycoon Animal Management System

## 13 Using LINQ – Starter

### Filtering Animals Version

------------------------------------------------------------------------

## User Story 101: Filter Animals by Attributes

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

## User Story 102: Analytics for Most Popular Colour

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

## User Story 103: Extended Main Menu

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

## User Story 104: LINQ-Based Filtering and Analytics

**As a** developer  
**I want** filtering and analytics implemented using LINQ  
**So that** the code is concise, efficient, and maintainable

### Acceptance Criteria:

- Use LINQ Where for filtering by Name, Colour, Limb Count

- Use LINQ GroupBy and Max for colour analytics

- Ensure null-safe operations and case normalization

**Priority:** High  
**Story Points:** 5

------------------------------------------------------------------------

## User Story 105: Enhanced User Interaction for Filtering

**As a** user  
**I want** clear prompts and feedback when filtering  
**So that** I understand what the system is doing

### Acceptance Criteria:

- Console prompts for filter values

- Display confirmation messages after filtering

- Show filtered list or analytics result immediately

**Priority:** Medium  
**Story Points:** 3

------------------------------------------------------------------------

## Technical Notes

### Major Architectural Changes

- **New Filtering Feature**: Introduced FilterAnimals() method and
  supporting helpers (PrintFilterMenu(), GetFilterValue(),
  GetMostPopularColours()).

- **Analytics Integration**: Added LINQ-based analytics for colour
  popularity.

- **UI Update**: Main menu extended to include filtering options.

------------------------------------------------------------------------

### New OOP Principles Demonstrated

- **Single Responsibility Principle (SRP)**: Filtering logic separated
  into dedicated methods.

- **Encapsulation**: Continued enforcement of validation in property
  setters.

- **Polymorphism**: Maintained overridden Eat() methods in subclasses.

------------------------------------------------------------------------

### Changes to Testing Strategy

- No new tests for filtering or analytics in the provided enhanced
  version (gap identified).

- Existing tests for validation and sorting remain unchanged.

- Future recommendation: Add unit tests for FilterAnimals() and
  GetMostPopularColours().

------------------------------------------------------------------------

### Code Quality Improvements

- **LINQ Usage**: Replaced manual loops with LINQ for filtering and
  grouping.

- **Improved Readability**: Clear separation of concerns in filtering
  logic.

- **Console UX Enhancements**: More descriptive prompts and feedback.

------------------------------------------------------------------------

### Migration Impacts

- **Backward Compatibility**: Existing functionality preserved; new
  features additive.

- **Database Schema**: No changes required; filtering operates on
  existing Animal entities.

- **Minimal Refactoring**: Enhancements localized to Program.cs.
