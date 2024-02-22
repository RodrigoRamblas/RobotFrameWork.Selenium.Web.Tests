*** Settings ***
Library    FakerLibrary    locale=pt_BR

*** Keywords ***
Generate Random Email
    [Documentation]    Gera um endereço de e-mail aleatório
    ${email}=    FakerLibrary.Email
    RETURN   ${email}

Generate Random Name
    [Documentation]    Gera um nome aleatório
    ${name}=    FakerLibrary.Name
    RETURN   ${name}

Generate Random Last Name
    [Documentation]    Gera um sobrenome aleatório
    ${last_name}=    FakerLibrary.Last Name
    RETURN   ${last_name}

Generate Random Phone Number
    [Documentation]    Gera um número de telefone aleatório
    ${phone}=    FakerLibrary.Phone Number
    RETURN   ${phone}

Generate Random Age
    [Documentation]    Gera uma idade aleatória
    ${age}=   FakerLibrary.Random Int
    RETURN   ${age}

Generate Random Sex Female
    [Documentation]    Gera um sexo aleatório (Feminino)
    ${sex}=    FakerLibrary.Suffix Female
    RETURN   ${sex}

Generate Random Sex Male
    [Documentation]    Gera um sexo aleatório (Masculino)
    ${sex}=    FakerLibrary.Suffix Male
    RETURN   ${sex}

Generate Random City
    [Documentation]    Gera um nome de cidade aleatório
    ${city}=    FakerLibrary.City
    RETURN   ${city}

Generate Random State
    [Documentation]    Gera um nome de estado aleatório
    ${state}=    FakerLibrary.State
    RETURN   ${state}

Generate Random Country
    [Documentation]    Gera um nome de país aleatório
    ${country}=    FakerLibrary.Country
    RETURN   ${country}

Generate Random Password
    [Documentation]    Gera uma senha aleatória
    ${password}=    FakerLibrary.Password
    RETURN   ${password}

Generate Random Data
    [Documentation]    Gera uma data aleatória
    ${date}=    FakerLibrary.Date
    RETURN   ${date}

Generate Random Company
    [Documentation]    Gera uma empresa aleatória
    ${company}=    FakerLibrary.Company
    RETURN   ${company}

Generate Random Adddress
    [Documentation]    Gera um endereço aleatório
    ${adddress}=    FakerLibrary.Address
    RETURN   ${adddress}

Generate Random Postcode
    [Documentation]    Gera um CEP aleatório
    ${postal_code}=    FakerLibrary.Postcode
    RETURN   ${postal_code}

Generate Random Text
    [Documentation]    Gera um texto aleatório
    ${text}=    FakerLibrary.Text
    RETURN   ${text}
