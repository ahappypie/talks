import { readdir, writeFile } from 'node:fs/promises'

async function main() {
  const packages = await readdir('../')

  const presentations = packages.filter(p => p !== 'index' && p !== '.DS_Store')
  await writeFile('./index.json', JSON.stringify(presentations))
}

main()
