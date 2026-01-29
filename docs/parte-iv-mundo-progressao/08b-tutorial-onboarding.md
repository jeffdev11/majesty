# 8b. TUTORIAL E FLUXO DE ONBOARDING: A JORNADA DO NOVO REI

## 8b.1 Filosofia de Ensino: "A Mão Invisível"

Como _Heroes of Majesty_ é um jogo de **influência indireta**, o tutorial não pode simplesmente dizer "Clique aqui para atacar". Isso ensinaria a mecânica errada.

**O Objetivo Central do Onboarding:**
Ensinar o jogador a **tolerar a falta de controle**. O tutorial deve frustrar propositalmente a tentativa de controle direto e recompensar a influência indireta.

---

## 8b.2 Fase 0: O Prólogo (Configuração Mental)

Antes mesmo do jogo começar, o Conselheiro prepara o palco.

**Tela Preta. Apenas texto terminal datilografado.**

```
> SISTEMA INICIANDO... v1.0.4
> CARREGANDO CONSCIÊNCIA REAL... OK.
> VERIFICANDO LISTA DE SÚDITOS... 0 ENCONTRADOS.
> ALERTA: O REINO ESTÁ VAZIO E SILENCIOSO.

CONSELHEIRO: "Majestade? Você acordou. Os antigos reis governavam
pela espada. Você governará pela *Vontade*. Mas cuidado...
Vontade sem Ouro é apenas um desejo."

> PRESSIONE [ENTER] PARA ASSUMIR O TRONO.
```

---

## 8b.3 Fase 1: O Despertar (Minutos 0-3)

**Objetivo:** Navegar pela interface TTY (F1-F4).

1.  **O Silêncio:** O jogo abre no [F1] OPS CENTER. Não há música. Apenas vento.
2.  **O Primeiro Comando:**
    - _Tarefa:_ O Conselheiro pede: "Abra o Mapa do Mundo [F4] para ver nossa insignificância."
    - _Ação:_ Jogador tecla `F4`.
    - _Resultado:_ O mapa revela apenas a Vila (um ponto de luz) e escuridão total (Fog of War) ao redor.
    - _Feedback:_ "Pequeno, não? Mas é tudo nosso."

3.  **A Primeira Decisão:**
    - _Ação:_ Jogador deve teclar `F2` (Admin) para ver o Tesouro.
    - _Estado:_ 1000 Ouro. 0 Income.
    - _Conselheiro:_ "Temos ouro para um único herói. Escolha com sabedoria, pois ele será sua única lâmina contra a noite."

---

## 8b.4 Fase 2: O Primeiro Súdito (Minutos 3-6)

**Objetivo:** Recrutamento e compreensão da IA Autônoma.

1.  **O Recrutamento:**
    - Jogador seleciona `GUILD_WARRIOR`.
    - _Script:_ O jogo força a geração de um herói com traço `BRAVE` (Corajoso) para garantir ação imediata.
    - _Nome:_ "Sir Alric" (ou aleatório).
    - _Evento:_ Assim que recrutado, Alric **não** fica parado. Ele imediatamente compra uma poção e sai da vila.

2.  **A Lição do Controle (CRÍTICA):**
    - _Teste:_ O jogador tentará clicar no herói ou digitar ordens diretas.
    - _Reação do Sistema:_ O Conselheiro interrompe:
      > "NÃO! Um rei não grita ordens para um soldado individual. Sir Alric tem vontade própria. Apenas observe."

3.  **A Observação:**
    - O jogador é obrigado a assistir (F1 ou F4) Sir Alric andar até a orla da floresta.
    - Um `Goblin Scout` (Tutorial Mob - HP reduzido) aparece.
    - **Batalha Automática:** Alric luta. O jogador vê os logs de combate no F1.
    - _Vitória:_ Alric vence. Loot: 50g.
    - _Conselheiro:_ "Viu? Ele sabe o que fazer. Sua confiança foi recompensada."

---

## 8b.5 Fase 3: A Primeira Crise (Minutos 6-10)

**Objetivo:** Ensinar Recompensas (Bounties) e uso de IP.

1.  **O Problema Escalado:**
    - Alric fica confiante (IA muda para `CONFIDENT`). Ele avança demais na floresta.
    - _Spawn:_ Um `Ogro Jovem` (Elite) aparece. Alric não consegue vencer sozinho.

2.  **A Falha da Autonomia:**
    - Alric começa a perder HP rapidamente.
    - Conselheiro: "Ele é bravo, mas estúpido. Vai morrer se continuar. Você não pode controlá-lo, mas pode **motivá-lo** a fugir ou **chamar ajuda** (se houvesse outro herói)."

3.  **A Intervenção (Mecânica de Reward/Flag):**
    - O jogo pausa o tempo (apenas no tutorial).
    - Tutorial ensina: Clicar na **Bandeira de Medo** no mapa e posicioná-la, ou pedir ao Conselheiro: "Ordene que Alric recue!".
    - _Custo:_ 10 IP.
    - _Ação:_ Jogador executa.
    - _Resultado:_ Alric vê o sinal real, a IA prioriza `SELF_PRESERVATION` e ele foge de volta para a vila.

4.  **Lição:** "Você não controla a espada, mas controla o campo de batalha."

---

## 8b.6 Fase 4: Ciclo Econômico e Expansão (Minutos 10-15)

**Objetivo:** Entender que Heróis gastam dinheiro.

1.  **A Recuperação:**
    - Alric, ferido, vai para a Taverna ou compra poção.
    - _Efeito Sonoro:_ Moedas caindo.
    - _HUD:_ Ouro do jogador sobe (Imposto).

2.  **O Investimento:**
    - Com o imposto gerado + loot passivo, o jogador agora tem 1200g.
    - Conselheiro sugere: "Recrute um Clérigo ou Mago para apoiar Alric."
    - Jogador recruta "Lyra (Mage)".

3.  **A Sinergia (O "Click" Mental):**
    - Alric volta à floresta com Lyra.
    - O Ogro Jovem ainda está lá.
    - Alric "tanka", Lyra causa dano de longe. Eles matam o Ogro.
    - _Loot Massivo:_ Item Raro dropa. O jogador sente a glória.

---

## 8b.7 Mecânicas de "Network Social"

O tutorial deve introduzir rapidamente que os heróis conversam.

- Após matarem o Ogro, o Log Social mostra:
  > `[SOCIAL] Alric pagou uma cerveja para Lyra. Afinidade +15.`
- Conselheiro: "Eles estão formando laços. Um exército unido luta melhor que mercenários isolados."

---

## 8b.8 Checklist de Finalização do Tutorial

O tutorial é considerado "Completo" quando o jogador (invisivelmente) atinge estas flags no banco de dados:

1.  `TUTORIAL_CAMERA_MOVED`: Navegou F1-F4.
2.  `TUTORIAL_FIRST_RECRUIT`: Recrutou 1 herói.
3.  `TUTORIAL_FIRST_TAX`: Coletou imposto de uma compra de IA.
4.  `TUTORIAL_SAVED_HERO`: Usou IP/Comando para evitar uma morte.
5.  `TUTORIAL_PARTY_FORMED`: Viu dois heróis lutarem juntos.

Após isso, o Conselheiro diz:

> "Eles estão prontos, Majestade. E você também. A noite se aproxima e os verdadeiros monstros virão. Eu estarei aqui... observando."

**[FIM DO MODO TUTORIAL - INÍCIO DO CICLO 1: PRIMAVERA]**

---

## 8b.9 Redes de Segurança (Fail States)

O que acontece se o jogador falhar no tutorial?

- **Se Alric morrer para o Ogro:**
  - O jogo **não** dá Game Over.
  - O Conselheiro fica sombrio: "Uma lição dura. O reino pagou com sangue. Aqui, pegue as economias da viúva de Alric (+200g) e tente de novo. Não desperdice novas vidas."
  - Isso ensina que a morte é permanente, mas a economia persiste.

- **Se o jogador gastar todo dinheiro em decorações inúteis:**
  - Evento scriptado `MERCHANT_ERROR`: Um mercadante deixa cair um saco de ouro (+500g) no portão. O Conselheiro suspira: "Sorte de tolo. Não conte com isso novamente."
