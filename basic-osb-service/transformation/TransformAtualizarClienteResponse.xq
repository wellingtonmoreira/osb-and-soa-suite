(:: pragma bea:global-element-parameter parameter="$atualizarLegadoResponse" element="ns0:AtualizarLegadoResponse" location="../xsd/cliente-legacy.xsd" ::)
(:: pragma bea:global-element-return element="ns0:AtualizarResponse" location="../xsd/cliente.xsd" ::)

declare namespace ns0 = "http://www.example.org/cadastrar/";
declare namespace xf = "http://tempuri.org/basic-osb-service/transformation/TransformAtualizarClienteResponse/";

declare function xf:TransformAtualizarClienteResponse($atualizarLegadoResponse as element(ns0:AtualizarLegadoResponse))
    as element(ns0:AtualizarResponse) {
        <ns0:AtualizarResponse>
            <message>{ xs:string($atualizarLegadoResponse/MENSAGEMRETORNOLEGADO) }</message>
        </ns0:AtualizarResponse>
};

declare variable $atualizarLegadoResponse as element(ns0:AtualizarLegadoResponse) external;

xf:TransformAtualizarClienteResponse($atualizarLegadoResponse)
