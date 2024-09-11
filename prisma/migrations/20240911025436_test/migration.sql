/*
  Warnings:

  - You are about to drop the `Usuario` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Usuario";

-- CreateTable
CREATE TABLE "Modality" (
    "id" BIGSERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Modality_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Team" (
    "id" BIGSERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Team_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Player" (
    "id" BIGSERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "teamId" BIGINT NOT NULL,

    CONSTRAINT "Player_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TeamModality" (
    "id" BIGSERIAL NOT NULL,
    "teamId" BIGINT NOT NULL,
    "modalityId" BIGINT NOT NULL,

    CONSTRAINT "TeamModality_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FutsalMatch" (
    "id" BIGSERIAL NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "team1Id" BIGINT NOT NULL,
    "team2Id" BIGINT NOT NULL,
    "team1Score" INTEGER NOT NULL,
    "team2Score" INTEGER NOT NULL,

    CONSTRAINT "FutsalMatch_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "VolleyballMatch" (
    "id" BIGSERIAL NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "team1Id" BIGINT NOT NULL,
    "team2Id" BIGINT NOT NULL,
    "team1SetsWon" INTEGER NOT NULL,
    "team2SetsWon" INTEGER NOT NULL,

    CONSTRAINT "VolleyballMatch_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Player" ADD CONSTRAINT "Player_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TeamModality" ADD CONSTRAINT "TeamModality_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TeamModality" ADD CONSTRAINT "TeamModality_modalityId_fkey" FOREIGN KEY ("modalityId") REFERENCES "Modality"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "FutsalMatch" ADD CONSTRAINT "FutsalMatch_team1Id_fkey" FOREIGN KEY ("team1Id") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "FutsalMatch" ADD CONSTRAINT "FutsalMatch_team2Id_fkey" FOREIGN KEY ("team2Id") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VolleyballMatch" ADD CONSTRAINT "VolleyballMatch_team1Id_fkey" FOREIGN KEY ("team1Id") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VolleyballMatch" ADD CONSTRAINT "VolleyballMatch_team2Id_fkey" FOREIGN KEY ("team2Id") REFERENCES "Team"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
