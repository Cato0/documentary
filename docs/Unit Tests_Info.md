---
id: Unit_Tests
title: Unit_Tests
sidebar_label: Unit_Tests
---

# Backend =>  Mocha / Chai # 

| *npm install mocha --save*

| *npm init*
- important: scripts->test für Mocha

Test Aufbau:

	var assert = require('assert');

	describe('Array', function () {

		describe('#indexOf()' , function () {
		
			it(' should do something ', function () {
			
				actualValue = getData();
				expectedValue = 10;
			
				assert.equal( actualValue, expectedValue);
			});
			
			it(' something else ', function () {
					
				assert.deep.equal( actualValue, expectedValue);
			});
		}
	}

######################################################################################

# Jasmine / Karma => Angular - Front-End

Aufbau:

	import {MainweatherdataComponent } from '@angular/http';

	describe('#indexOf()' , function () {
		
		let component: MainweatherdataComponent;
		
		beforeEach( () => {
			TestBed.configureTestingModule({
				declarations: [MainweatherdataComponent],
				providers: [Service1Service],
				imports: [HttpModule]
			})
			
			# ... 
			# e.g.
			
			component = fixture.componentInstance;
			
			# Then you can use component.someFunction from the Module in every Test (it.)
		});
		afterEach( () => {
			### ...
		});
		
		it(' should do something ', function () {
		
			actualValue = getData();
			expectedValue = 10;
		
			assert.equal( actualValue, expectedValue);
		});
		
		it(' something else ', function () {
				
			assert.deep.equal( actualValue, expectedValue);
		});
	}

### Different Expects

    expect(randomNumber).toBe(1);
    expect(randomNumber).toBeGreaterThan(0);
    expect(randomNumber).toBeLessThanOrEqual(10);
    expect(randomNumber).toBeFalsy();
    expect(randomNumber).toBeNaN();
    expect(randomNumber).toBeCloseTo(5);
    expect(randomNumber).toContain("a");
    expect(randomNumber).toMatch("any");
    expect(randomNumber).toHaveBeenCalled();
    expect(randomNumber).toThrow("any");

### Spy

	let spy1 = spyOn(className, 'functionName');   # 1. Argument is the Class instance
	let spy2 = spyOn(className, 'functionName2');  # 2. Argument is a String with the name of the function

	expect(spy1).toHaveBeenCalledBefore(spy2);
	expect(spy1).toHaveBeenCalled();
	expect(spy1).toHaveBeenCalledBefore(spy2);
	expect(spy1).toHaveBeenCalledTimes(3);

### Other stuff for Asynchronous Tasks ??? doesnt work yet
	
	let spy = spyOn(component, 'updateTodaysData').and.returnValue("Bottrop");

	let spy2 = spyOn(component, 'updateWeatherData').and.callFake(() => {

	  component.updateTodaysData("Bochum");
	  component.updateWeatherForecast("Bochum");
	});

######################################################################################