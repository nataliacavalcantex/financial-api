-- CreateEnum
CREATE TYPE "Role" AS ENUM ('ADMIN', 'CLIENT');

-- CreateTable
CREATE TABLE "User" (
    "user_Id" TEXT NOT NULL,
    "user_Email" TEXT NOT NULL,
    "user_FirstName" TEXT NOT NULL,
    "user_LastName" TEXT NOT NULL,
    "user_Address" TEXT NOT NULL,
    "user_PasswordHash" TEXT NOT NULL,
    "user_BirthDate" DATE NOT NULL,
    "user_Role" "Role" NOT NULL DEFAULT 'CLIENT',
    "user_Account" INTEGER NOT NULL,
    "user_CreatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "user_UpdatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("user_Id")
);

-- CreateTable
CREATE TABLE "Account" (
    "account_Id" TEXT NOT NULL,
    "account_Type" TEXT NOT NULL,
    "account_Balance" DOUBLE PRECISION NOT NULL,
    "account_Limit" DOUBLE PRECISION NOT NULL,
    "account_OwnerId" TEXT NOT NULL,
    "account_CreatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "account_UpdatedAst" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Account_pkey" PRIMARY KEY ("account_Id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_user_Email_key" ON "User"("user_Email");

-- CreateIndex
CREATE UNIQUE INDEX "User_user_Account_key" ON "User"("user_Account");

-- CreateIndex
CREATE UNIQUE INDEX "Account_account_OwnerId_key" ON "Account"("account_OwnerId");

-- AddForeignKey
ALTER TABLE "Account" ADD CONSTRAINT "Account_account_OwnerId_fkey" FOREIGN KEY ("account_OwnerId") REFERENCES "User"("user_Id") ON DELETE RESTRICT ON UPDATE CASCADE;
