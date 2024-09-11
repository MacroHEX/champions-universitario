/*
  Warnings:

  - You are about to drop the `Match` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Player` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Sport` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Team` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TeamSport` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Match" DROP CONSTRAINT "Match_team1Id_fkey";

-- DropForeignKey
ALTER TABLE "Match" DROP CONSTRAINT "Match_team2Id_fkey";

-- DropForeignKey
ALTER TABLE "Match" DROP CONSTRAINT "Match_winnerId_fkey";

-- DropForeignKey
ALTER TABLE "Player" DROP CONSTRAINT "Player_teamId_fkey";

-- DropForeignKey
ALTER TABLE "TeamSport" DROP CONSTRAINT "TeamSport_sportId_fkey";

-- DropForeignKey
ALTER TABLE "TeamSport" DROP CONSTRAINT "TeamSport_teamId_fkey";

-- DropTable
DROP TABLE "Match";

-- DropTable
DROP TABLE "Player";

-- DropTable
DROP TABLE "Sport";

-- DropTable
DROP TABLE "Team";

-- DropTable
DROP TABLE "TeamSport";

-- DropEnum
DROP TYPE "Category";

-- CreateTable
CREATE TABLE "Usuario" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "grade" TEXT NOT NULL,

    CONSTRAINT "Usuario_pkey" PRIMARY KEY ("id")
);
