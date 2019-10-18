---
id: Typescript
title: Typescript
sidebar_label: Typescript
---

# Typescript to Javascript

- Object oriented programming language 
- Variables with definite Types
	- Static typing
		- static num = 5;
	- check type correctness at compile time
- gives support for modules
- has Interface
- supports optional parameter function

- TypeScript does not support abstract classes
- Generally TypeScript takes time to compile the code

# Types #

	let x_String: String = "test";
	let x_int: number = 1;
	let x_bool: boolean = true;
	let list: number[] = [1,2,3];
	let list: Array<number> = [1,2,3];
	let x: [string, number] = ["hello", 10];	# Tupel
	let x: any = "any type";

######################################################################################

	let drawPoint = (point: { a: number, b: number, c: number, d: number}) => {
		...
	}

	let drawPoint = (point: Point) => {
		...
	}

######################################################################################

# CLASSES #

	class Point {
		
		constructor (private _x?: number, private _y?: number) {		# Add the ? if this input is optional
			this.x = x;
			this.y = y;
		}
		
		get x() {
			return this._x;
		}
		
		set x(value) {
			this._x = value
		}
		
		draw () {
			console.log(this.x);
		}
	}

	let p1 = new Point();
	p1.draw();

# Vererbung / Inheritance


class Tier {
	laufen() : void {

	}
}

class Hund extends Tier {
	beine:number = 4;
	bellen():void {

	}
}


# Overwrite / Überschreiben

- extends

# Überladen

# Interfaces

- ist dafür da ein Template für unterklassen zu erstellen, wie diese auszusehen haben
- nur abstrakte Methoden
- man kann nun keine Tiere alleine mehr erstellen !

interface Tier {
	beine : number;
	laufen:() => void;	# Abstract Method, keine Parameter, gibt Void zurück
}

class Hund implements Tier {
	beine:number = 4;
	laufen():void {
		console.log("omw");
	}	
}


# Abstract Method

interface Tier

# Export
	
	// File named FileName1

	export class Class1 {
	    x : number = 5;
	    y : number = 1;
	    name : string = "myName";

	    static name2 : string = "myName2";

	    names : string[] = ["Name1", "Name2"];
	}

	// Alternatively do the export at the end like this:

	class Class2 {
	    x : number = 4;
	    y : number = 3;
	    name : string = "myName";

	    static name2 : string = "myName2";

	    names : string[] = ["Name1", "Name2"];
	}
	export { Class2 };


	// Other File
	// You cannot change the Name Class1 inside the brackets

	import { Class1 as AliasName1 } from './FileName1';
	import { Class2 } from './FileName1';

## Export Default


	export default class Class1 {
	    x : number = 5;
	    y : number = 1;
	    name : string = "myName";

	    static name2 : string = "myName2";

	    names : string[] = ["Name1", "Name2"];
	}

	// Other File
	// This import requires a Default in the export File
	// This way you can 

	import InstanceName1 from './FileName1'


# For-of Loop / Schleife

ar : number[] = [11, 22, 33];

    for (let i of this.ar) {
      console.log(i);
    }

    // Result: 0, 1, 2



    for (let i of this.ar) {
      console.log(i);
    }

    // Result: 11, 22, 33