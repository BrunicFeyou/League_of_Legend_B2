import express from 'express'
import cors from 'cors'
import router from './router.js'
import bodyParser from 'body-parser'

const app = express();


app.use(cors())
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extented: true})) 
app.use(router)
app.listen(3000, () => {
    console.log('j\'écoute le serveur 3000')

})