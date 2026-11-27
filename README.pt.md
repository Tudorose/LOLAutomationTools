<div align="right">
  <details>
    <summary>🌐 Language</summary>
    <div align="center">
      <a href="./README.md">简体中文</a> | <a href="./README.en.md">English</a> | <a href="./README.zh-TW.md">繁體中文</a> | <a href="./README.ja.md">日本語</a> | <a href="./README.ko.md">한국어</a> | <a href="./README.hi.md">हिन्दी</a> | <a href="./README.th.md">ไทย</a> | <a href="./README.fr.md">Français</a> | <a href="./README.de.md">Deutsch</a> | <a href="./README.es.md">Español</a> | <a href="./README.it.md">Italiano</a> | <a href="./README.ru.md">Русский</a> | **Português** | <a href="./README.nl.md">Nederlands</a> | <a href="./README.pl.md">Polski</a> | <a href="./README.ar.md">العربية</a> | <a href="./README.fa.md">فارسی</a> | <a href="./README.tr.md">Türkçe</a> | <a href="./README.vi.md">Tiếng Việt</a> | <a href="./README.id.md">Bahasa Indonesia</a> | <a href="./README.as.md">অসমীয়া</a>
    </div>
  </details>
</div>

Esta é uma tradução da comunidade (português) do [README em chinês simplificado](./README.md). PRs de correção são bem-vindos.

# Introdução
**LOLAutomationTools** é uma ferramenta de expansão de funções para **"League of Legends"**; é usado para ajudar os jogadores a realizar algumas operações simples do cliente para economizar um pouco de tempo em algumas cenas onde eles não conseguem liberar as mãos ou precisam sair temporariamente; o software não interferirá muito na compreensão do jogador e na jogabilidade do jogo, portanto, algumas funções ainda precisam ser configuradas manualmente (como a configuração da runa do herói). Muita restrição deixará as pessoas entorpecidas e perderão a diversão do jogo em si; brincar ativamente e felizmente para construir um ambiente harmonioso.

# Funcionalidades
- Escolher automaticamente
  - Pré-escolher
- Banir automaticamente
  - Ignorar a seleção da equipe
  - Modo grupo desativado
- Escolha aleatória
- Anti-abandono no pick/ban
- Aceitar automaticamente
  - Demora na aceitação de jogos
- Criar sala
- Encontrar partida
  - Detecção de tempo limite de partida
- Troca
  - Troque heróis no modo aleatório
    - Ou apenas aceite passivamente que outros jogadores troquem de heróis
    - Rejeitar trocas de heróis não escolhidos
  - Seleção de troca do modo Omen
    - Ou receba passivamente as seleções de troca de posição de outros jogadores
    - Rejeitar trocas de bits não pré-selecionadas
  - Pisos de troca de modo de recrutamento
    - Ou apenas aceite passivamente outros jogadores trocando de andar
    - Rejeitar trocas de piso não configuradas
- Pular página de homenagem
- Pular página de desbloqueio
- Resposta automática no chat
  - Responder à mensagem de um amigo enquanto estiver ausente
  - Responda a convites de jogos enquanto estiver fora
    - Recusar convite para jogo ao sair
- Janela auxiliar
  - Exibição de BUFF de equilíbrio de herói no modo de entretenimento
  - Aplicar runas automaticamente
  - Correção de erro de runa
  - Configuração independente do herói
- Fechar jogo auto.
- Reconectar auto.
- Receba automaticamente recompensas de passes (incluindo Teamfight Tactics)
- Processamento de solicitação de amizade
  - Exclua amigos em lotes
- carreira personalizada
  - Histórico de carreira
  - Avatar do invocador
  - status do cliente
  - assinatura de status
  - fragmento de nome
  - Pontos de conquista do herói
  - Medalhas transparentes
- Bloqueio de teclas de função
- Consulta de registro
  - Enviar resultados
  - Detecção de hacking dentro do jogo
  - Jogadores assistindo ao jogo
  - Relatórios dos jogadores após o jogo
- Ligue no escritório
- lista negra
- Configurações de teclas de atalho
- Configurações de tema
  - Tema escuro/claro
  - Tema adaptativo
  - Tema personalizado
  - Configurações de imagem de fundo
  - Personalização de fonte
- Funções estendidas
  - Seleção automática de cartão (Card Master)

## Escolher automaticamente
Antes de usar **Select Hero** e **Disable Hero**, você precisa realizar operações de edição na página de configuração (botão atrás do item switch).

Os itens de herói adicionados nas configurações do ramo só têm efeito em alguns modos de jogo com *posições pré-selecionadas* (como *Qualificado* e *Extreme Blitz*), aleatórios só têm efeito em modos *Herói Aleatório* (como *Arcs*, *Briga Infinita*, a página de configuração aleatória não está incluída na configuração do herói desativado) e geralmente são válidos em todos os outros modos (excluindo os modos listados anteriormente, isso é para fins de especificações de uso). Ao realizar a seleção automática de heróis, o herói será selecionado de acordo com **Selecionar Heróis** Os itens de configuração são selecionados de cima para baixo.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/6aa4f1ad-28db-4bd5-a917-df4197024f5f" />

## Pré-escolher
A lógica de execução desta função é basicamente a mesma de **Select Heroes**. A diferença é que **Heróis pré-selecionados** só terão efeito em modos com fases desabilitadas, como *Qualificado* e alguns modos de entretenimento que exigem heróis desabilitados.

## Banir automaticamente
A página de configuração **Disable Hero** é basicamente igual à página de configuração **Select Hero**. Só existe um botão para alternar os modos no canto superior direito. Clique no botão para mudar para o modo desativado.

*Modo de banimento normal*: A lógica de operação deste modo é consistente com a página de configuração de **Select Heroes**. Ao executar o banimento automático de heróis, caso não haja nenhum herói desabilitado configurado, o jogador será banido em 0 segundos do tempo restante da fase de Banimento.

*Modo Desativar Grupo*: Os itens na lista de configuração serão substituídos pelos heróis correspondentes na configuração **Selecionar Heróis**. Ao selecionar um item, clique duas vezes no item do herói à esquerda para adicioná-lo ao **Grupo de Desativação** do herói. Ao desabilitar automaticamente o herói, a ordem dos itens de configuração de **Select Heroes** será seguida. Se não houver heróis a serem desativados no **Grupo de Desativação** de todas as configurações de **Selecionar Heróis**, eles serão desativados de acordo com a lógica do modo de banimento normal.

>Se *Ignorar pré-seleção de companheiro de equipe* estiver ativado, a detecção de pré-seleção de equipe será ignorada ao executar um banimento automático de herói. Não é recomendado ativar esta opção.

## Aceitar automaticamente
Aceite automaticamente a correspondência após a correspondência.

>Quando a opção *Atrasar aceitação de correspondências* estiver habilitada, **Aceitar correspondências** só aceitará automaticamente a correspondência quando faltar o último segundo da contagem regressiva de aceitação.

## Criar sala
Você pode criar uma partida manualmente através do botão **Criar partida** ou ativar esta opção para criar uma partida automaticamente.

>*Criar um jogo automaticamente* Você precisa selecionar o modo de jogo que deseja criar em *Mais Configurações*, esta opção não será salva na configuração.

## Encontrar partida
Pesquise correspondências automaticamente. Isso só terá efeito quando você estiver em uma sala do modo de partida e for o proprietário do time (anfitrião).

>Se a opção *Detecção de tempo limite* estiver habilitada, as correspondências serão automaticamente pesquisadas novamente na fila de correspondências se a estimativa da fila exceder o intervalo especificado.

## pular elogios
Pule a página de elogios aos companheiros de equipe no final do jogo.

## Pular fim de jogo
Ignore a espera pela liquidação no final do jogo (tela preta carregando em círculos) ou a página de liquidação pós-jogo e retorne à sala do modo de jogo.

## Troca
Contém o item de chave principal e três itens de chave independentes, você também precisa fazer outras configurações. Nas configurações adicionais da **Função de troca**, defina se deseja trocar heróis com companheiros de equipe no modo de herói aleatório ou trocar andares (a ordem em que os heróis são selecionados) e slots pré-selecionados com companheiros de equipe no modo de recrutamento.

*A configuração de troca de heróis e troca de posições é relativamente simples, então não entrarei em detalhes aqui. *

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/361b4b19-cd72-4cb3-901f-69d49284bc11" />

Em **Mais configurações** de **Campos de câmbio**, você pode definir a ordem de troca (ou seja, andares) e o modo de troca.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/697bed4a-2984-43f6-b747-36c7911ef99d" />

*Modo de troca*:
- Apenas pedido alvo: Aceite solicitações de colegas de equipe consistentes com o *pedido* especificado.
- Contém prioridade de destino: Aceitar solicitações de colegas de equipe ≤ a *ordem* especificada.
- Ordem de adiamento com meta: Aceitar solicitações de colegas de equipe ≥ a *ordem* especificada.
- Escopo baseado na ordem alvo: Aceita solicitações de colegas de equipe com *pedido* ≤ (*pedido especificado* - *escopo*) e *pedido* ≥ (*pedido especificado* + *escopo*).

Além disso, existem duas opções de troca de rejeição em **Outras configurações**. Quando esses dois estiverem habilitados,** caso um companheiro de equipe solicite a troca de heróis com você ou selecione uma posição que não esteja dentro das condições determinadas, a solicitação de troca será automaticamente rejeitada. **Caso contrário** nenhuma ação será tomada. Você pode decidir se aceita a troca.

## Anti-abandono no pick/ban
Quando habilitado, **Select Hero** ou **Disable Hero** será executado no último segundo da fase BP.

>Você pode alterar as configurações de modo da função **Ban Selected Heroes Anti-Return** na *Página de configurações de função*.

## Respostas de ausência
Este item de chave é a chave principal e você precisa fazer outras configurações. Na página de configuração **Mais**, defina se deseja responder automaticamente a mensagens de amigos ou convites de jogos ao sair (estes estão ativados por padrão) e defina o conteúdo do texto da resposta.

<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/68f9e16f-7263-4924-954f-8e4f880a4007" />

## Janela auxiliar
Quando habilitado, uma **janela adicional** será exibida durante algumas fases do cliente. Além disso, você pode clicar no botão atrás dessa opção para entrar na **Página de configuração** da **Janela adicional**, onde você também pode visualizar os **Atributos de equilíbrio** (se houver) do herói no modo de entretenimento atualmente disponível e definir a configuração de runas e a configuração independente do cliente disponível em cada modo.

**Janela adicional** Página de configuração</br>
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/dd7a6d53-177e-4132-b612-20aaf4a4d2e6" />
<img width="900" height="680" alt="image" src="https://github.com/user-attachments/assets/7675278c-5ed8-4d0d-9248-d8ef8b07201d" />

>Se você deseja adicionar ou atualizar a configuração de runas do herói na **Página de configuração de runas**, você precisa selecionar uma página de runas em **Coleções - Runas** no cliente do jogo, editá-la e salvá-la, alterar as habilidades do invocador no canto superior direito e pressionar o botão **Adicionar configuração** ou o botão *Atualizar configuração atual do jogo para esta configuração* no **Item de configuração de runas** a ser atualizado para adicionar ou atualizar a configuração de runas.

**Janela adicional**</br>
<img width="388" height="650" alt="image" src="https://github.com/user-attachments/assets/b7a1df40-f496-4c8a-a540-54806fc8d3f4" />

## Fechar jogo auto.
Simples e direto, o processo do jogo é encerrado automaticamente quando a animação do final do cristal é reproduzida no final do jogo.

## Reconectar auto.
Tente se reconectar quando o jogo precisar se reconectar.

## Carta automática (extensão)
Quando o herói atualmente no jogo for um mestre de cartas, use as teclas Z/X/C para selecionar automaticamente as cartas azuis/vermelhas/amarelas.

![pickCards](https://github.com/user-attachments/assets/df5aa45a-8593-44c9-8c3f-bec315552113)

>Esta função é implementada usando processamento gráfico e simulação de teclado. Ele testa apenas as duas resoluções comumente usadas (1920x1080/2560x1440). Outras resoluções não podem ser usadas normalmente sem autoconfiguração (especialmente resoluções diferentes da proporção de escala 16:9). A detecção permite uma determinada faixa de filtro, mas é recomendado não ligar o filtro ao usar esta função para evitar invalidar uma determinada detecção.

---

# Extensões (terceiros)

>O conteúdo descrito nesta seção é mantido pela Tudorose, não pelo autor anfitrião. O host `LOLAutomationTools` e sua configuração original (`Config/`) são de propriedade de © Lianxin e este repositório não faz nenhuma modificação neles.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/Tudorose/LOLAutomationTools?include_prereleases)](https://github.com/Tudorose/LOLAutomationTools/releases)

## Módulos

|módulo|Explicação de uma frase|Detalhes|
|---|---|---|
| **VoiceModule** |Pressione e segure a tecla de atalho para falar, e o texto será enviado para o chat do jogo após reconhecimento local.| [voice-module/README.md](voice-module/README.md) |
| **OP.GG launcher** |Enxerte a janela de registro OP.GG do Seraphine para a página "Funções estendidas"| [opgg-launcher/README.md](opgg-launcher/README.md) |

## Início rápido

### 1. Prepare o anfitrião
Baixe `LOLAutomationTools` (≥ 2.9.801) da [página de lançamento upstream] (https://github.com/Seraph1ne/LOLAutomationTools/releases) e extraia-o para qualquer diretório, que será registrado como `<宿主目录>` abaixo.
Este repositório **não distribui** programas host.

### 2. Baixe o modelo de fala
VoiceModule requer um modelo ASR no formato sherpa-onnx (cerca de 254 MB). Este repositório **não distribui** o modelo. Para o endereço de download e layout do diretório, consulte [voice-module/README.md → Download do modelo](voice-module/README.md#模型下载).

### 3. Instalação com um clique
Execute (PowerShell) no diretório raiz deste warehouse:
```powershell
.\scripts\install.ps1 -HostDir <宿主目录> -ModelDir <解压好的模型目录>
```
Opções:
```powershell
-WithOpgg -SeraphineDir <Seraphine 目录>    # 同时安装 OP.GG launcher
-VoiceZip <本地 zip>                          # 离线安装，跳过下载
```
O script irá automaticamente: Baixar Release `VoiceModule-latest.zip` → Parar o host → Copiar dll/pdb → Escrever `exe.config` (existe sem substituir) → Colocar a configuração padrão em `Extend/` (já existe sem substituir) → Copiar o modelo.

### 4. Habilitar
Inicie `LOLAutomationTools.exe` → **Funções estendidas** à esquerda → **Agrupamento de voz** → Ative o botão **Voz para texto**. Pressione e segure `空格` para falar, solte para enviar para o chat da equipe.

## Download

|documento|ilustrar|
|---|---|
| [`VoiceModule-latest.zip`](https://github.com/Tudorose/LOLAutomationTools/releases/latest/download/VoiceModule-latest.zip) |Módulo compilado + configuração padrão (~275 KB)|

## Licença

|contente|licença|
|---|---|
| `voice-module/`、`opgg-launcher/launcher.py`、`scripts/` | [MIT](LICENSE) |
|`Config/`, `README.md` Primeira metade (conteúdo original do apresentador)|© Lian Xin, propriedade da Upstream|
|`LOLAutomationTools.exe` e suas bibliotecas acompanhantes|© Lian Xin, **não distribuído neste repositório**|
|Seraphine (dependência do iniciador OP.GG)|[GPL-3.0](https://github.com/ZhangBin-000/Seraphine), **não distribuído neste repositório**|
|modelo de tempo de execução/ASR sherpa-onnx|[Apache-2.0](https://github.com/k2-fsa/sherpa-onnx), **não distribuído neste repositório**|

## Agradecimentos
- [Seraph1ne/LOLAutomationTools](https://github.com/Seraph1ne/LOLAutomationTools) —— Programa host
- [ZhangBin-000/Seraphine](https://github.com/ZhangBin-000/Seraphine) —— Fonte da janela OP.GG
- [k2-fsa/sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx) —— Reconhecimento de fala offline

