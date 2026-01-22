# Agile User Stories for Zoo Tycoon Animal Management System

## 11 Interfaces – Starter

### OOP using Interfaces Version

------------------------------------------------------------------------

## User Story 81: Animal Sorting by Multiple Criteria

**As a** zoo operator  
**I want** to sort animals by name, colour, or limb count  
**So that** I can view animals in meaningful sequences

### Acceptance Criteria:

- Console menu includes a new “Sort animals” option

- Sorting options:

  - By Name (alphabetical)

  - By Colour (alphabetical)

  - By Limb Count (numeric)

- Sorting uses built-in List\<T\>.Sort() method

- Sorted results are displayed immediately after sorting

**Priority:** High  
**Story Points:** 5

------------------------------------------------------------------------

## User Story 82: Comparable Animals by Limb Count

**As a** developer  
**I want** animals to be naturally comparable  
**So that** default sorting works without custom logic

### Acceptance Criteria:

- Animal implements IComparable\<Animal\>

- CompareTo() compares animals by LimbCount

- Enables animals.Sort() without parameters

- Sorting logic is encapsulated inside the domain model

**Priority:** High  
**Story Points:** 3

------------------------------------------------------------------------

## User Story 83: Named Comparers for Flexible Sorting

**As a** developer  
**I want** reusable comparers for different animal properties  
**So that** sorting logic is centralized and extensible

### Acceptance Criteria:

- Animal.NameComparer exposed as a static property

- Animal.ColourComparer exposed as a static property

- Comparers implement IComparer\<Animal\>

- Comparers validate against null references

- Comparers are lazily instantiated (singleton-style)

**Priority:** High  
**Story Points:** 5

------------------------------------------------------------------------

## User Story 84: Animal Equality Based on Business Identity

**As a** developer  
**I want** animals to be comparable for equality  
**So that** I can detect duplicates and compare instances reliably

### Acceptance Criteria:

- Animal implements IEquatable\<Animal\>

- Equals() compares animals by Name

- Equality logic reflects business rules, not object reference

- Does not break existing collection usage

**Priority:** Medium  
**Story Points:** 3

------------------------------------------------------------------------

## User Story 85: Cloneable Animals

**As a** developer  
**I want** animals to be cloneable  
**So that** I can safely duplicate animal objects

### Acceptance Criteria:

- New generic interface ICloneable\<T\> introduced

- Animal implements ICloneable\<Animal\>

- Clone() returns a shallow copy via MemberwiseClone()

- Clone retains all property values including ID

**Priority:** Medium  
**Story Points:** 3

------------------------------------------------------------------------

## User Story 86: Generic Clone Interface for Type Safety

**As a** developer  
**I want** cloning to be strongly typed  
**So that** I avoid unsafe casting and runtime errors

### Acceptance Criteria:

- ICloneable\<T\> interface introduced in library

- Clone() returns type T instead of object

- Eliminates reliance on legacy ICloneable

- Supports future cloneable domain objects

**Priority:** Medium  
**Story Points:** 2

------------------------------------------------------------------------

## User Story 87: Enhanced Console Menu Navigation

**As a** user  
**I want** clear menu options including sorting  
**So that** I can easily discover new functionality

### Acceptance Criteria:

- Main menu includes a “Sort animals” option

- Sort menu clearly displays available sort criteria

- Invalid input does not crash the application

- Existing menu behaviour remains unchanged

**Priority:** Medium  
**Story Points:** 2

------------------------------------------------------------------------

## User Story 88: Improved Object-Oriented Design Demonstration

**As a** developer  
**I want** the solution to demonstrate advanced OOP principles  
**So that** I can utilize real-world design patterns

### Acceptance Criteria:

- Interfaces used for behaviour abstraction

- Comparers implemented using nested classes

- Clear separation of concerns (UI vs Domain)

- Polymorphism preserved across animal types

**Priority:** Low  
**Story Points:** 2

------------------------------------------------------------------------

## Technical Notes (Enhanced Version)

------------------------------------------------------------------------

### Major Architectural Changes

- Introduction of **behavioural interfaces** (IComparable, IEquatable,
  ICloneable\<T\>)

- Sorting logic moved from UI into the **domain model**

- Domain-driven design strengthened by encapsulating comparison rules

------------------------------------------------------------------------

### New OOP Principles Demonstrated

- **Interface Segregation** – multiple focused interfaces

- **Polymorphism** – animals behave uniformly in sorting and comparison

- **Encapsulation** – comparison logic lives inside Animal

- **Open/Closed Principle** – new sort strategies added without
  modifying UI code

- **Lazy Initialization** – static comparers instantiated only when
  needed

------------------------------------------------------------------------

### Changes to the Testing Strategy

- Existing tests remain valid (backward compatible)

- Enhanced version implicitly supports:

  - Sorting validation

  - Equality semantics

  - Clone behaviour testing (future expansion ready)

- Improved testability through deterministic comparison logic

------------------------------------------------------------------------

### Code Quality Improvements

- Strong typing via generics (ICloneable\<T\>)

- Elimination of duplicate sorting logic

- Improved readability and maintainability

- Reduced coupling between UI and domain layers

------------------------------------------------------------------------

### Migration Impacts

- No breaking changes to public constructors

- Existing consumers of Animal remain compatible

- UI gains new functionality without refactoring existing workflows

- Enhanced version is a **drop-in replacement** for the original
