import express from 'express';
import { getChampions, getChampion, updateChampion, deleteChampion, createChampion } from '../controllers/ChampionsController.js';

const router = express.Router();

router.post('/',createChampion);
router.get('/', getChampions)
router.get('/:id', getChampion)
router.put('/:id', updateChampion)
router.delete('/:id', deleteChampion)


export default router