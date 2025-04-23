import express from 'express';
import {
    getUsers,
    getUserById,
    insertUser,
    updateUser,
    deleteUser,
} from '../Controllers/users.js';

const router = express.Router();

router.get('/', getUsers);
router.get("/users/:id", getUserById); // Corrigido para aceitar o parâmetro ID
router.post('/', insertUser);
router.put('/:id', updateUser);
router.delete('/:id', deleteUser);

export default router;