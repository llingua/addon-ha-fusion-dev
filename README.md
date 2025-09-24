# HA Fusion Custom Dev Add-on 🚀

Dashboard personalizzato **DEVELOPMENT** per Home Assistant con Universal Bar Component e features sperimentali.

![Version](https://img.shields.io/badge/version-2025.09.0--custom--develop-orange)
![Arch](https://img.shields.io/badge/arch-amd64%20%7C%20aarch64%20%7C%20armv7-green)
![Branch](https://img.shields.io/badge/branch-develop-red)

## ⚠️ **ATTENZIONE: Versione Development**

Questa è una versione **development** che include le ultime funzionalità e potrebbe contenere bug o features sperimentali. Per un uso in produzione, usa [HA Fusion Custom](https://github.com/llingua/addon-ha-fusion) (versione stabile).

## 🚀 Caratteristiche Development

- 🎯 **Universal Bar Component**: Componente Bar disponibile sia nella sidebar che nel main dashboard
- 📐 **Multiple Size**: Compatta, Media, Grande
- 🖱️ **Click to Edit**: Modifica diretta dal dashboard principale
- ⚙️ **Enhanced Configuration**: Modal migliorata con selezione dimensioni
- 🔬 **Latest Features**: Tutte le features più recenti dal branch develop
- 🛠️ **Experimental**: Potrebbe includere funzionalità sperimentali
- ✅ **Conflict-Free**: Può essere installato insieme ad altre versioni di ha-fusion

## 🔧 Anti-Conflitto (Dev Version)

Questo add-on development è progettato per evitare conflitti:

- **🌐 Porta Unica**: Usa la porta 8091 (diversa da standard 8099 e stable 8090)
- **📁 Slug Unico**: `ha_fusion_custom_dev` (unico per la versione development)
- **🗂️ Dati Separati**: Directory prefissata con `ha-fusion-custom-dev`
- **🏷️ Nome Distintivo**: "HA Fusion Custom Dev" con icona test-tube

> ✅ **Multi-Installazione**: Puoi avere stable, dev e versioni originali installate simultaneamente

## Basato su

**Basato su:** <https://github.com/matt8707/ha-fusion>  
**Versione personalizzata:** <https://github.com/llingua/ha-fusion-custom> (branch develop)

## 🆕 Universal Bar Component

Il componente Bar, precedentemente disponibile solo nella sidebar, ora può essere aggiunto anche al dashboard principale con le seguenti funzionalità:

- **Multiple Size**: Scegli tra 3 dimensioni (Compatta, Media, Grande)
- **Click to Edit**: Clicca sulla barra nel dashboard per modificarla
- **Responsive**: Si adatta perfettamente sia in sidebar che nel main

### Come usare la nuova funzionalità Bar

1. Entra in modalità Edit
2. Clicca su "Add Object"
3. Seleziona "Bar" dalla lista
4. Configura entità, nome e dimensione
5. Clicca "Done"

Per modificare una barra esistente, entra in modalità Edit e clicca sulla barra.

## 🔄 Differenze con la versione stabile

| **Feature**        | **Stable**      | **Dev**         |
| ------------------ | --------------- | --------------- |
| **Universal Bar**  | ✅              | ✅              |
| **Stabilità**      | ✅ Testata      | ⚠️ Sperimentale |
| **Nuove Features** | ❌              | ✅ Latest       |
| **Bug Fix**        | ✅ Solo critici | ✅ Tutti        |
| **Uso Produzione** | ✅ Raccomandato | ❌ Sconsigliato |

[![Add Repository](https://img.shields.io/badge/Add%20Repository-orange?style=for-the-badge&logo=home-assistant&logoColor=white)](https://github.com/llingua/addon-ha-fusion-dev)
# Docker build trigger
