/*
  Warnings:

  - You are about to drop the column `sport` on the `Match` table. All the data in the column will be lost.
  - You are about to drop the `FutsalMatch` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SportsTeam` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `VolleyballMatch` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "FutsalMatch" DROP CONSTRAINT "FutsalMatch_team1Id_fkey";

-- DropForeignKey
ALTER TABLE "FutsalMatch" DROP CONSTRAINT "FutsalMatch_team2Id_fkey";

-- DropForeignKey
ALTER TABLE "FutsalMatch" DROP CONSTRAINT "FutsalMatch_winnerId_fkey";

-- DropForeignKey
ALTER TABLE "Match" DROP CONSTRAINT "Match_team1Id_fkey";

-- DropForeignKey
ALTER TABLE "Match" DROP CONSTRAINT "Match_team2Id_fkey";

-- DropForeignKey
ALTER TABLE "Match" DROP CONSTRAINT "Match_winnerId_fkey";

-- DropForeignKey
ALTER TABLE "Player" DROP CONSTRAINT "Player_teamId_fkey";

-- DropForeignKey
ALTER TABLE "VolleyballMatch" DROP CONSTRAINT "VolleyballMatch_team1Id_fkey";

-- DropForeignKey
ALTER TABLE "VolleyballMatch" DROP CONSTRAINT "VolleyballMatch_team2Id_fkey";

-- DropForeignKey
ALTER TABLE "VolleyballMatch" DROP CONSTRAINT "VolleyballMatch_winnerId_fkey";

-- AlterTable
ALTER TABLE "Match" DROP COLUMN "sport";

-- DropTable
DROP TABLE "FutsalMatch";

-- DropTable
DROP TABLE "SportsTeam";

-- DropTable
DROP TABLE "VolleyballMatch";

-- CreateTable
CREATE TABLE "Sport" (
    "id" BIGSERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Sport_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Team" (
    "id" BIGSERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Team_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TeamSport" (
    "id" BIGSERIAL NOT NULL,
    "teamId" BIGINT NOT NULL,
    "sportId" BIGINT NOT NULL,
    "category" "Category" NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "TeamSport_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "TeamSport" ADD CONSTRAINT "TeamSport_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TeamSport" ADD CONSTRAINT "TeamSport_sportId_fkey" FOREIGN KEY ("sportId") REFERENCES "Sport"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_team1Id_fkey" FOREIGN KEY ("team1Id") REFERENCES "TeamSport"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_team2Id_fkey" FOREIGN KEY ("team2Id") REFERENCES "TeamSport"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_winnerId_fkey" FOREIGN KEY ("winnerId") REFERENCES "TeamSport"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Player" ADD CONSTRAINT "Player_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
