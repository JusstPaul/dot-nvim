local status, lspkind = pcall(require, 'lspkind')
if (not status) then return end

lspkind.init {
  mode   = 'symbol_text',
  symbol_map = {
  }
}
