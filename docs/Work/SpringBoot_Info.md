---
id: SpringBoot
title: SpringBoot
sidebar_label: SpringBoot
---


# SpringBoot

## Übertragen von POST Variablen zu einer anderen Seite

1. Seite "A" hat eine <form method="post" action="seite2.html"> 
    - POST als ich das mit der REST API gemacht habe
    - GET als ich das mit dem Gewinnspiel gemacht habe
2. und z.B. einen Input <input name="asd">

3. im Java Backend ist die Variable deklariert      private asd
    - mit setter und getter

4. eventuell muss man den setter dann noch aufrufen in einer Java Funktion

5. Seite "B" hat dann z.B auch einen Input:
    <input name="asd" th:value="asd">
    th:value oder th:field kann hier genommen werden

6. Außerdem sind die Variablen noch in einer -flow.xml Datei gespeichert ???
    - e.g. gewinnspiel-flow.xml


# @Request Mapping - REST API ?

- maps HTTP Requests to hander methods of MVC and REST controllers

## GET

    @RestController

    @RequestMapping("/home")

    public class IndexController {

        @RequestMapping("/", method = GET)

        String get() {

            //mapped to hostname:port/home/

            return "Hello from get";

        }

        @RequestMapping("/index")

        String index() {

            //mapped to hostname:port/home/index/

            return "Hello from index";

        }

    }


### GET With Parameters

    @RequestMapping(value = "/test/{spaPart1}/{spaPart2}/{spaPart3}", method = GET)
    public String test (@Validated @ModelAttribute(MODEL_ATTRIBUTE_WINNING_REQUEST) WinningRequestDTO winningRequest, BindingResult bindingResult, HttpServletRequest request, @PathVariable String spaPart1, @PathVariable String spaPart2, @PathVariable String spaPart3) {
        // logic to process input data

        return GEWINNABFRAGE;
    }


## POST


    @RequestMapping(params = "teaserWinningRequest" , value = "$[" + GEWINNABFRAGE + "]", method = POST)
    public String processTeaserWinningRequest (@Validated @ModelAttribute(MODEL_ATTRIBUTE_WINNING_REQUEST) WinningRequestDTO winningRequest, BindingResult bindingResult, HttpServletRequest request,
        @RequestParam("spaPart1") String spaPart1, @RequestParam("spaPart2") String spaPart2, @RequestParam("spaPart3") String spaPart3) {

        if (StringUtils.isNotBlank(spaPart1) && StringUtils.isNotBlank(spaPart2) && StringUtils.isNotBlank(spaPart3) ) {
            winningRequest.setSpaPart1(spaPart1);
            winningRequest.setSpaPart2(spaPart2);
            winningRequest.setSpaPart3(spaPart3);
        }

        if (winningRequest.isCustomerLoggedIn()) {

            // Validieren der Eingabe
            winningRequest.setCustomerLoggedIn(userSessionDataBean.getCustomer() != null);          // If user is logged in
            winningRequestService.validateWinningRequest(winningRequest, bindingResult, request);   //
            winningRequest.setChallengeResponse(null);  // Captcha leeren

            if (!bindingResult.hasErrors()) {
                // Gewinnanfrage weiterleiten
                WinningRequestResultDTO winningRequestResult = winningRequestService.requestWinning(winningRequest);
                winningRequest.setWinningRequestResult(winningRequestResult);
            }
//            return GEWINNABFRAGE;
        }
