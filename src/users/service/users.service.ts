import { Injectable } from '@nestjs/common';
import { PrismaService } from '../../prisma/prisma.service';
//import { User, Prisma } from '@prisma/client';

@Injectable()
export class UsersService {
  constructor(private prisma: PrismaService) {}
  async getAllUsers(): Promise<any> {
    return this.prisma.user.findMany();
  }
}
