# Agile User Stories for Zoo Tycoon Animal Management System

## 10 OOP Inheritance – Starter

### OOP using Inheritance Version

------------------------------------------------------------------------

## User Story 71: Separation of Domain Logic into a Class Library

**As a** developer  
**I want** the core animal domain logic moved into a reusable class
library  
**So that** the application architecture is cleaner and supports reuse
and testing

Acceptance Criteria:  
• A new Class Library project (CSharpZooTycoonLibrary) exists  
• Animal, Cat, Dog, and Bird classes are defined in the library  
• The UI project references the library instead of defining domain
classes  
• The UI project no longer contains animal implementation logic

**Priority:** High  
**Story Points:** 5

------------------------------------------------------------------------

## User Story 72: Introduce Specialized Animal Subclasses

**As a** developer  
**I want** specific animal types represented by subclasses  
**So that** species-specific behaviour and data can be modelled cleanly

Acceptance Criteria:  
• Cat, Dog, and Bird inherit from Animal  
• Each subclass adds at least one unique property  
• Subclasses use base constructor for shared attributes  
• Animal remains usable as a generic fallback type

**Priority:** High  
**Story Points:** 8

------------------------------------------------------------------------

## User Story 73: Species-Specific Attributes with Validation

**As a** zoo administrator  
**I want** different animals to have species-specific attributes  
**So that** animal data is more realistic and detailed

Acceptance Criteria:  
• Cat has WhiskerCount (minimum 0)  
• Dog has TailLength (minimum 0.05)  
• Bird has Wingspan (minimum 10)  
• Invalid values are automatically corrected to safe minimums  
• Values are enforced via property setters

**Priority:** High  
**Story Points:** 8

------------------------------------------------------------------------

## User Story 74: Polymorphic Eating Behaviour

**As a** zoo visitor  
**I want** animals to eat differently depending on their species  
**So that** behaviour feels more realistic and engaging

Acceptance Criteria:  
• Animal provides a virtual Eat method  
• Dog overrides Eat and extends base behaviour  
• Cat hides Eat with species-specific behaviour  
• Bird hides Eat with species-specific behaviour  
• UI calls Eat polymorphically without type checks

**Priority:** Medium  
**Story Points:** 5

------------------------------------------------------------------------

## User Story 75: Species-Specific Actions

**As a** zoo visitor  
**I want** animals to perform unique sounds or actions  
**So that** each animal feels distinct and interactive

Acceptance Criteria:  
• Dog supports Bark(numberOfWoofs)  
• Cat supports Meow(numberOfMeows)  
• Bird supports Tweet(numberOfTweets)  
• Zero or negative values return empty strings  
• Actions repeat text based on provided count

**Priority:** Medium  
**Story Points:** 5

------------------------------------------------------------------------

## User Story 76: Enhanced Animal Creation Flow in UI

**As a** zoo administrator  
**I want** the system to request species-specific details when adding
animals  
**So that** each animal is created with complete and valid data

Acceptance Criteria:  
• UI prompts for WhiskerCount when adding a Cat  
• UI prompts for TailLength when adding a Dog  
• UI prompts for Wingspan when adding a Bird  
• Generic Animal requires no additional attributes  
• Correct subclass instance is created based on selected type

**Priority:** High  
**Story Points:** 8

------------------------------------------------------------------------

## User Story 77: Enhanced Animal Editing Based on Runtime Type

**As a** zoo administrator  
**I want** to edit species-specific attributes for animals  
**So that** updates reflect each animal’s unique characteristics

Acceptance Criteria:  
• Edit flow detects runtime type using is checks  
• Cat allows editing WhiskerCount  
• Dog allows editing TailLength  
• Bird allows editing Wingspan  
• Shared properties remain editable for all animals

**Priority:** High  
**Story Points:** 8

------------------------------------------------------------------------

## User Story 78: Polymorphic Animal Listing in Console UI

**As a** zoo administrator  
**I want** animal listings to display species-specific attributes  
**So that** I can see all relevant details at a glance

Acceptance Criteria:  
• Base animal details always displayed  
• Cat listings include WhiskerCount  
• Dog listings include TailLength  
• Bird listings include Wingspan  
• Listing logic uses runtime type checks

**Priority:** Medium  
**Story Points:** 5

------------------------------------------------------------------------

## User Story 79: Extended Attribute Validation in UI

**As a** developer  
**I want** the UI validation system extended for new attributes  
**So that** invalid data is rejected before object creation

Acceptance Criteria:  
• AttributeChecker supports WhiskerCount  
• AttributeChecker supports TailLength  
• AttributeChecker supports Wingspan  
• Validation rules align with library constraints  
• Invalid input loops until corrected

**Priority:** Medium  
**Story Points:** 5

------------------------------------------------------------------------

## User Story 80: Dedicated Unit Tests for Subclass Behaviour

**As a** developer  
**I want** comprehensive unit tests for each animal subclass  
**So that** species-specific behaviour is verified and protected

Acceptance Criteria:  
• Separate test class for non-base animals  
• Tests exist for Cat, Dog, and Bird constructors  
• Tests validate attribute minimum enforcement  
• Tests verify overridden and hidden Eat behavior  
• Tests verify species-specific methods (Bark, Meow, Tweet)

**Priority:** High  
**Story Points:** 8

------------------------------------------------------------------------

## Technical Notes

### Major Architectural Changes

#### Separation into Multiple Projects

- The solution was refactored from a **single-project architecture**
  into a **multi-project solution**:

  - **UI / Console Application** (CSharpZooTycoon)

  - **Domain Class Library** (CSharpZooTycoonLibrary)

  - **Unit Test Project** (ZooTycoonTests)

- Core domain logic (animals and behavior) was moved out of the UI
  project into the class library.

- The UI now depends on abstractions (library types) rather than
  containing domain logic itself.

#### Improved Layered Design

- **Presentation Layer**: Console UI handles input/output and
  orchestration only.

- **Domain Layer**: Animal hierarchy encapsulates state, validation, and
  behavior.

- **Test Layer**: Independently tests domain and UI logic.

*Impact:  *
This structure improves maintainability, testability, and reusability,
and aligns with common enterprise and clean architecture patterns.

------------------------------------------------------------------------

### New OOP Principles Demonstrated

#### Inheritance

- Cat, Dog, and Bird inherit from the base Animal class.

- Shared behavior and properties are centralized in Animal.

- Species-specific attributes and behaviors are implemented in
  subclasses.

#### Polymorphism

- Eat() is declared virtual in Animal and overridden or hidden in
  subclasses.

- UI code interacts with animals via the Animal base type while invoking
  runtime-specific behavior.

- ToString() is overridden in each subclass to extend base output.

#### Method Overriding vs Method Hiding

- Dog uses override Eat() to extend base behavior.

- Cat and Bird use new Eat() to fully replace base behavior.

- This explicitly demonstrates different polymorphic strategies and
  their consequences.

#### Encapsulation (Strengthened)

- Species-specific attributes (WhiskerCount, TailLength, Wingspan) are
  private fields with public properties.

- Validation logic is enforced at the property level rather than in the
  UI.

#### Open/Closed Principle (OCP)

- New animal types can be added by creating new subclasses without
  modifying the base Animal class.

- UI logic uses runtime type checks, enabling extension with minimal
  disruption.

------------------------------------------------------------------------

### Changes to the Testing Strategy

#### Expanded Test Coverage

- Tests are no longer limited to the base Animal class.

- A new test class (OtherAnimalClassTests) validates subclass-specific
  behavior.

#### Granular Unit Testing

- Separate tests exist for:

  - Constructors

  - Property validation

  - Overridden methods

  - New species-specific behaviors (e.g., Bark, Meow, Tweet)

#### Validation Logic Tested at the Domain Level

- Minimum constraints (e.g., tail length, wingspan) are verified in
  tests.

- Reduces reliance on UI validation for data integrity.

#### Improved Test Isolation

- The class library allows testing domain logic **without invoking
  console I/O**.

- Static ID counters are reset explicitly to ensure deterministic tests.

------------------------------------------------------------------------

Impact:  
Tests now validate **behavior, not just state**, and provide better
regression protection as the system grows.

------------------------------------------------------------------------

### Code Quality Improvements

#### Reduced Responsibility in UI Layer

- Validation and behavior logic migrated from Program.cs into domain
  classes.

- UI now focuses on workflow, input handling, and display.

#### Stronger Single Responsibility Principle (SRP)

- Each class has a clear responsibility:

  - Animal: shared state and behavior

  - Dog, Cat, Bird: species-specific logic

  - Program: user interaction and orchestration

#### Consistent Validation Strategy

- Property setters enforce constraints consistently across constructors,
  edits, and tests.

- Prevents invalid object states regardless of how objects are created.

#### Improved Readability and Maintainability

- Smaller, focused classes instead of a single large model.

- Logical grouping of behavior makes future changes easier and safer.

------------------------------------------------------------------------

### Migration Impacts

#### Namespace and Reference Changes

- All animal-related classes moved to CSharpZooTycoonLibrary.

- UI project updated to reference the new library.

- Tests updated to reference both UI and library projects.

#### Object Creation Changes

- Animal creation now depends on selected type and results in subclass
  instances.

- Existing code that assumed a single Animal type required adjustment.

#### ID Management Consistency

- Static ID behavior preserved but required careful resetting in tests.

- Tests updated to pass explicit IDs when needed.

#### Backward Compatibility

- Base Animal remains usable for unknown or generic species.

- Existing functionality (listing, feeding, editing) continues to work
  with minimal UI changes.

#### Increased Extensibility Cost Awareness

- Adding new species now requires:

  - New subclass

  - New UI prompts

  - New validation rules

  - New unit tests

- This trade-off is accepted in favor of stronger domain modeling.

------------------------------------------------------------------------

## Summary

The enhanced solution represents a **significant architectural and
object-oriented maturity step**, moving from a procedural, UI-driven
design to a **layered, polymorphic domain model** with strong validation
and test coverage. The changes improve scalability, correctness, and
instructional value while introducing realistic trade-offs typical of
real-world software evolution.
