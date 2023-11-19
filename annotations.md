# SPRING WIRING DEPENDENCIES

IF THE CLASS ONLY HAS A CONSTRUCTOR YOU DONT NEED TO AUTOWIRE

That’s because when there’s only one constructor, Spring implicitly applies
autowiring of dependencies through that constructor’s parameters.

IF U WANT TO WIRE EXPLICITLY OR HAS MORE THAN 1 CONSTRUCTOR, USE @Autowired