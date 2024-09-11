/*
  Warnings:

  - The primary key for the `FutsalMatch` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `date` on the `FutsalMatch` table. All the data in the column will be lost.
  - You are about to drop the column `team1Score` on the `FutsalMatch` table. All the data in the column will be lost.
  - You are about to drop the column `team2Score` on the `FutsalMatch` table. All the data in the column will be lost.
  - The primary key for the `Modality` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Team` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `TeamModality` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `VolleyballMatch` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `date` on the `VolleyballMatch` table. All the data in the column will be lost.
  - You are about to drop the column `team1SetsWon` on the `VolleyballMatch` table. All the data in the column will be lost.
  - You are about to drop the column `team2SetsWon` on the `VolleyballMatch` table. All the data in the column will be lost.
  - You are about to drop the `Player` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `team1Goals` to the `FutsalMatch` table without a default value. This is not possible if the table is not empty.
  - Added the required column `team2Goals` to the `FutsalMatch` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `id` on the `FutsalMatch` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `team1Id` on the `FutsalMatch` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `team2Id` on the `FutsalMatch` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `id` on the `Modality` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `id` on the `Team` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `id` on the `TeamModality` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `teamId` on the `TeamModality` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `modalityId` on the `TeamModality` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Added the required column `team1Points` to the `VolleyballMatch` table without a default value. This is not possible if the table is not empty.
  - Added the required column `team2Points` to the `VolleyballMatch` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `id` on the `VolleyballMatch` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `team1Id` on the `VolleyballMatch` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `team2Id` on the `VolleyballMatch` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- DropForeignKey
ALTER TABLE "FutsalMatch" DROP CONSTRAINT "FutsalMatch_team1Id_fkey";

-- DropForeignKey
ALTER TABLE "FutsalMatch" DROP CONSTRAINT "FutsalMatch_team2Id_fkey";

-- DropForeignKey
ALTER TABLE "Player" DROP CONSTRAINT "Player_teamId_fkey";

-- DropForeignKey
ALTER TABLE "TeamModality" DROP CONSTRAINT "TeamModality_modalityId_fkey";

-- DropForeignKey
ALTER TABLE "TeamModality" DROP CONSTRAINT "TeamModality_teamId_fkey";

-- DropForeignKey
ALTER TABLE "VolleyballMatch" DROP CONSTRAINT "VolleyballMatch_team1Id_fkey";

-- DropForeignKey
ALTER TABLE "VolleyballMatch" DROP CONSTRAINT "VolleyballMatch_team2Id_fkey";

-- AlterTable
ALTER TABLE "FutsalMatch" DROP CONSTRAINT "FutsalMatch_pkey",
DROP COLUMN "date",
DROP COLUMN "team1Score",
DROP COLUMN "team2Score",
ADD COLUMN     "matchDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "team1Goals" INTEGER NOT NULL,
ADD COLUMN     "team2Goals" INTEGER NOT NULL,
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL,
DROP COLUMN "team1Id",
ADD COLUMN     "team1Id" UUID NOT NULL,
DROP COLUMN "team2Id",
ADD COLUMN     "team2Id" UUID NOT NULL,
ADD CONSTRAINT "FutsalMatch_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Modality" DROP CONSTRAINT "Modality_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL,
ADD CONSTRAINT "Modality_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Team" DROP CONSTRAINT "Team_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL,
ADD CONSTRAINT "Team_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "TeamModality" DROP CONSTRAINT "TeamModality_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL,
DROP COLUMN "teamId",
ADD COLUMN     "teamId" UUID NOT NULL,
DROP COLUMN "modalityId",
ADD COLUMN     "modalityId" UUID NOT NULL,
ADD CONSTRAINT "TeamModality_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "VolleyballMatch" DROP CONSTRAINT "VolleyballMatch_pkey",
DROP COLUMN "date",
DROP COLUMN "team1SetsWon",
DROP COLUMN "team2SetsWon",
ADD COLUMN     "matchDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "team1Points" INTEGER NOT NULL,
ADD COLUMN     "team1Sets" INTEGER[],
ADD COLUMN     "team2Points" INTEGER NOT NULL,
ADD COLUMN     "team2Sets" INTEGER[],
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL,
DROP COLUMN "team1Id",
ADD COLUMN     "team1Id" UUID NOT NULL,
DROP COLUMN "team2Id",
ADD COLUMN     "team2Id" UUID NOT NULL,
ADD CONSTRAINT "VolleyballMatch_pkey" PRIMARY KEY ("id");

-- DropTable
DROP TABLE "Player";

-- CreateTable
CREATE TABLE "Student" (
    "id" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "ci" TEXT NOT NULL,
    "career" TEXT NOT NULL,

    CONSTRAINT "Student_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TeamStudent" (
    "id" UUID NOT NULL,
    "teamId" UUID NOT NULL,
    "studentId" UUID NOT NULL,

    CONSTRAINT "TeamStudent_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Student_ci_key" ON "Student"("ci");

-- AddForeignKey
ALTER TABLE "TeamModality" ADD CONSTRAINT "TeamModality_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TeamModality" ADD CONSTRAINT "TeamModality_modalityId_fkey" FOREIGN KEY ("modalityId") REFERENCES "Modality"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TeamStudent" ADD CONSTRAINT "TeamStudent_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TeamStudent" ADD CONSTRAINT "TeamStudent_studentId_fkey" FOREIGN KEY ("studentId") REFERENCES "Student"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "FutsalMatch" ADD CONSTRAINT "FutsalMatch_team1Id_fkey" FOREIGN KEY ("team1Id") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "FutsalMatch" ADD CONSTRAINT "FutsalMatch_team2Id_fkey" FOREIGN KEY ("team2Id") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VolleyballMatch" ADD CONSTRAINT "VolleyballMatch_team1Id_fkey" FOREIGN KEY ("team1Id") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VolleyballMatch" ADD CONSTRAINT "VolleyballMatch_team2Id_fkey" FOREIGN KEY ("team2Id") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
