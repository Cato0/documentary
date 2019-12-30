# Plz -> Adresse

https://ltg-infocus-test03.test-server.ag/api/autocomplete/address?plz=45883

Response:

    Gelsenkirchen


Mapped onto:

    public java.lang.String de.ltg.portal.controller.api.autocomplete.AddressRestController.getCities(java.lang.String)


# Iban -> AccountNumber, BankCode, BankName, BIC, IBAN

https://ltg-infocus-test03.test-server.ag/api/autocomplete/bankaccount?iban=DE77533700080111111100&focusOut=iban


Response:

    BankAccountRecord:

        accountNumber	"111111100"
        bankCode	"53370008"
        bankName	"Deutsche Bank"
        bic	"DEUTDEFF533"
        iban	"DE77533700080111111100"


Mapped onto:

    public org.springframework.http.ResponseEntity<de.ltg.portal.model.autocomplete.AutocompleteResponseWrapper> de.ltg.portal.controller.api.autocomplete.BankAccountRestController.completeBankAccount(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String)