import { PrismaClient } from "@prisma/client";


const prisma = new PrismaClient()
const createChampion =(req, res) => {
    let champion = req.body
    console.log(champion)
    prisma.champion.create({
        data: {
            name: champion.name,
            type: champion.type
        }
    })
    .then((champion)=> {
        res.json(champion)
    })
    .catch((error) => {
        res.json(error)
    })
    
    // return res.json(champion)
    
}
const getChampions =(req, res) => {
    prisma.champion.findMany()
    .then((champions) =>{  // champions est le nom sous laquelle sont déclarées les données récupérées 
        res.json(champions)
    })
    .catch((error) => {
        res.json(error)
    })
}
const getChampion =(req, res) => {
   let id = Number(req.params.id) // on récupère l'id de l'agent dans les paramètres de la rêquete et on le converti en nombre
   prisma.champion.findUnique({
       where: {
           id 
        }
   })
   .then((champion)=> {
    res.json(champion)
   })
   .catch((error)=> {
    res.json(error)
   })

}
const updateChampion =(req, res) => {
    let id = Number(req.params.id) 
    let champion = req.body // on stocke les données envoyées par le client dans une variable champion
    prisma.champion.update({ // champion ici c'est le nom de ma table en base de données
        where: {
            id: id 
        }, 
        data: {
            name: champion.name, // champion ici c'est la requête précedemment définie
            type: champion.type
        }
    })
    .then((champion)=>{
        res.json(champion)
    })
    .catch((error)=> {
        res.json(error)
    })
}
const deleteChampion =(req, res) => {
    let id = Number(req.params.id)
    prisma.champion.delete({
        where: {
            id
        }
    })
    .then((champion)=> {
        res.json(champion)
    })
    .then((error)=> {
        res.json(error)
    })
}


export {createChampion, getChampions, getChampion, updateChampion, deleteChampion}