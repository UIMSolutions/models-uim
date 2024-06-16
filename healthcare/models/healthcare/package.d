/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.healthcare;

@safe:
public import std.stdio;
public import std.string;
public import std.uuid;

// Dub
public import vibe.d;

// uim packages
public import uim.core;
public import uim.oop;
public import uim.models;

public import models.systems;

// model-system packages
public import models.healthcare.attributes;
public import models.healthcare.classes;
public import models.healthcare.entities;
