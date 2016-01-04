(:: pragma bea:global-element-parameter parameter="$cadastrarRequest" element="ns0:Cadastrar" location="../xsd/cliente.xsd" ::)
(:: pragma bea:global-element-return element="ns0:CadastrarLegado" location="../xsd/cliente-legacy.xsd" ::)

declare namespace ns0 = "http://www.example.org/cadastrar/";
declare namespace xf = "http://tempuri.org/basic-osb-service/transformation/TransformCadastrarClienteRequest/";

declare function xf:TransformCadastrarClienteRequest($cadastrarRequest as element(ns0:Cadastrar))
    as element(ns0:CadastrarLegado) {
        <ns0:CadastrarLegado>
            <NOMELEGADO>{ xs:string($cadastrarRequest/nome) }</NOMELEGADO>
            <SOBRENOMELEGADO>{ xs:string($cadastrarRequest/sobrenome) }</SOBRENOMELEGADO>
            <DATANASCLEGADO>{ xs:date($cadastrarRequest/dataNascimento) }</DATANASCLEGADO>
            <ENDERECOLEGADO>{ xs:string($cadastrarRequest/endereco) }</ENDERECOLEGADO>
            <EMAILLEGADO>{ xs:string($cadastrarRequest/email) }</EMAILLEGADO>
        </ns0:CadastrarLegado>
};

declare variable $cadastrarRequest as element(ns0:Cadastrar) external;

xf:TransformCadastrarClienteRequest($cadastrarRequest)
