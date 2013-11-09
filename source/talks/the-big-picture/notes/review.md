---
link: http://multifaceted.io/2013/rubyconf-13-preview-jim-weirich/
title: The Big Picture
author: Jim Weirich
---

From the beginning Jim Weirich engaged us with an in depth review of Edward Hopper's painting Nighthawks.  Weirich gives us his insights of the noir of Nighthawks and spent the beginning of the talk expounding on the beauty that pictures can tell us and the depth of understanding that can be gained from studying a diagram.

Paralling the study of Nighthawks, Weirich shares with us a threefold way that UML is used.

 - 1 Sketch
 - 2 Blueprint
 - 3 Programming Language

## Example depencies
A simple diagram of a class of a car can include the name of a class.  The methods of the class Car can divide the box with a horizontal bar to divide the methods from the class name.

When there is class inheritance a UML diagram can show a dependency with a linked arrow.  Protocols can break or intersect depencies.

A diagram indicates in a useful manner the dependencies involved in running tests, and where the decoupling from the framework was present.  This decoupling is immediately understandable by the direction of the arrows for the inheritance and the protocols.

Pass in the contexts from the controllers and leaves all the business logic alone so it's free to be tested outside of Rails.
The diagram conveys how the unit testing and the integration testing have separate and scoped arenas.

## Diagram of Rake
Rake has a few classes with a large number of methods.  This could make the diagram very large.  Earlier in the talk Jim mentioned that the domain of the UML diagram should include the scope of the diagrammed issue.  Namespaces are nested and he shows how teh current_scope reflects the namespace nesting as it changes. Nothing captures the whole namespace structures.

## Flying Robots
Jim demonstrates the argus library and shows a video of the helicopter flying using the argus controls.

## Vocabulary of UML
Actions help us determine state.

## Interactions
The process of walking through the code to draw the diagram is everything.  Diagrams are not drawn for the diagrams benefit but for the learnign expereince they embody.  They are great for detecting depencies, structure and anomolies in structure.

Tips
- Communicate an idea
 - Omit details if they are unimportant
- Explore ideas
- Draw the diagram yourself, dont use tools that examine source code and generate diagrams.  It's the process of learning that makes the process useful.
- Keep them ephemeral
 - Whiteboards are great.

## Books
- UML Distilled Martin Fowler

## Tools
- Whiteboards, UMLet, OmniGraffle, Violet UML