
## O que eu entendi sobre módulos(imports, exports, declarations) em angular

- Módulos são agregadores de contexto e escopo.
- Um componente nao pode fazer parte do declaration de mais de um modulo. E nao posso importa-lo pois é um componente. A solucao para usar componentes compartilhados é transforma-lo em um moódulo

- Usar módulos e submódulos, permite sabermos com clareza do que cada módulo precisa para funcionar.
  - **imports**
    - É uma boa prática importar CommonModule (o que permite usar NgIf e etc) em todos os módulos.
    - Importa outros módulos que farão parte desse modulo, que serão usados, onde quem importar esse modulo pai automaticamente importa os modulos filhos. Parecido com Herança em OO.
    - Quando o módulo A é importado no módulo B, os componentes exportados pelo módulo A vão estar disponíveis para uso nos templates dos componentes declarados no módulo B
    - O Componente HttpClient quando usado em um componente precisa que o módulo que está usando o componente tenha disponível(importado) o módulo HttpClientModule
  - **exports**
    - Necessário quando um componentente declarado no módulo A é usado no template de outro componente que está declarado em outro módulo B.
    - Exportar este componente é necessário para que ele possa ser importado em outro módulo através da importação do Módulo, não do componente diretamente
  - **declarations**
    - São os componentes/pipe/e etc (menos os @injectables) que são usados no módulo. Na hieraquia do módulo são como irmãos, se enxergam entre si.
    - Se por exemplo um componente está em declaration e não no exports. Significa que seu uso está restrito a somente este módulo.
