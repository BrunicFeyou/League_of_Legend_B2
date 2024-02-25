import {PrismaClient} from '@prisma/client'
import champions from './champions.json' assert{ type: 'json'} 
// le assert est un attibut que permet de spécifier l'import d'un fichier de type json

const prisma = new PrismaClient()

const load = async() => {
    try {
         await prisma.champion.createMany({
            data: champions
        })
        console.log('tous les champions ont été ajoutés')
    } catch(e) {
        console.error(e)
    } finally {
        await prisma.$disconnect() 
        
    }
}

load()