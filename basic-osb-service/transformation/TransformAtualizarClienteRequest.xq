(:: pragma bea:global-element-parameter parameter="$atualizarRequest" element="ns0:Atualizar" location="../xsd/cliente.xsd" ::)
(:: pragma bea:global-element-return element="ns0:AtualizarLegado" location="../xsd/cliente-legacy.xsd" ::)

declare namespace ns0 = "http://www.example.org/cadastrar/";
declare namespace xf = "http://tempuri.org/basic-osb-service/transformation/TransformAtualizarClienteRequest/";

declare function xf:TransformAtualizarClienteRequest($atualizarRequest as element(ns0:Atualizar))
    as element(ns0:AtualizarLegado) {
        <ns0:AtualizarLegado>
            <NOMELEGADO>{ xs:string($atualizarRequest/nome) }</NOMELEGADO>
            <SOBRENOMELEGADO>{ xs:string($atualizarRequest/sobrenome) }</SOBRENOMELEGADO>
            <DATANASCLEGADO>{ xs:date($atualizarRequest/dataNascimento) }</DATANASCLEGADO>
            <ENDERECOLEGADO>{ xs:string($atualizarRequest/endereco) }</ENDERECOLEGADO>
            <EMAILLEGADO>{ xs:string($atualizarRequest/email) }</EMAILLEGADO>
        </ns0:AtualizarLegado>
};

declare variable $atualizarRequest as element(ns0:Atualizar) external;

xf:TransformAtualizarClienteRequest($atualizarRequest)
