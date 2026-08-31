# Formô Match

Catálogo visual das turmas atendidas pela Formô.
Site estático, sem build e sem dependências — é só HTML, CSS e um pouco de JavaScript.

## No ar

https://SEU-USUARIO.github.io/formo-match/

## Estrutura

```
index.html               tela de abertura (design Formô Match + botão Começar)
buscar.html              seleção: país → estado → curso → faculdade → turma → o que criar
medicina-unidavi/        catálogo de produtos da turma
assets/
  css/match.css          estilos das telas de abertura e seleção
  fonts/                 Codec Cold (compartilhada por todas as páginas)
  img/                   marca Formô Match e os traços do design
```

## Como mexer

**Faculdades, cursos, estados atendidos e os cartões do final**
Tudo fica em listas no fim do `buscar.html`, comentadas em português:
`ATENDIDOS`, `CURSOS`, `FACULDADES`, `CRIAR`.
É só escrever o nome novo dentro da lista — os botões aparecem sozinhos.

**Vídeos dos cartões finais**
Na lista `CRIAR`, preencha o campo `video` com o caminho do arquivo
(ex.: `assets/video/decor.mp4`). Enquanto estiver vazio, aparece "vídeo em breve".

**Produtos do catálogo**
No fim de `medicina-unidavi/index.html`, na lista `PRODUTOS`.
Copie um bloco `{ … }`, troque as informações e coloque as fotos em
`medicina-unidavi/assets/produtos/`.

## Ver no computador antes de publicar

```
python3 -m http.server 4321
```

E abrir http://127.0.0.1:4321

## Publicar as mudanças

```
./publicar.sh "o que mudou"
```
