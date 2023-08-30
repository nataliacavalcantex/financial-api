import { Module } from '@nestjs/common';
import { UsersService } from './service/users.service';
import { PrismaService } from 'src/prisma/prisma.service';
import { UsersController } from './controller/users.controller';

@Module({
  controllers: [UsersController],
  providers: [UsersService, PrismaService],
})
export class UsersModule {}
